provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = "day-19-provisioner-ec2"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file(var.private_key_path)
    host        = self.public_ip
  }

  # Copy file to EC2
  provisioner "file" {
    source      = "app.sh"
    destination = "/tmp/app.sh"
  }

  # Execute commands
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/app.sh",
      "sudo /tmp/app.sh"
    ]
  }
}

resource "aws_security_group" "sg" {
  name = "day-19-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
