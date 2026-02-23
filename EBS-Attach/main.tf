provider "aws" {
  region = var.aws_region
}

# Get existing EC2
data "aws_instance" "existing" {
  instance_id = var.instance_id
}

# Create EBS in same AZ as EC2
resource "aws_ebs_volume" "ebs" {
  availability_zone = data.aws_instance.existing.availability_zone
  size              = var.volume_size
  type              = "gp3"

  tags = {
    Name = "day-27-ebs"
  }
}

# Attach EBS to EC2
resource "aws_volume_attachment" "attach" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.ebs.id
  instance_id = var.instance_id
}