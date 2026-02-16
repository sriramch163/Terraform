vpc_id = "vpc-xxxxxxxx"

ingress_rules = [
  {
    description = "SSH"
    port        = 22
    cidr        = ["YOUR_IP/32"]
  },
  {
    description = "HTTP"
    port        = 80
    cidr        = ["0.0.0.0/0"]
  },
  {
    description = "HTTPS"
    port        = 443
    cidr        = ["0.0.0.0/0"]
  }
]
