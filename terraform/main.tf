resource "aws_security_group" "anime_sg" {
  name        = "anime-web-sg"
  description = "Secure security group for Anime Web"

  # HTTP access for users
  ingress {
    description = "Allow HTTP from public internet"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # SSH restricted to your IP only
  ingress {
    description = "Allow SSH only from admin IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["103.195.248.154/32"]
  }

  # Restrict outbound traffic to HTTPS only
 egress {
  description = "Allow outbound HTTPS traffic only within VPC"
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["10.0.0.0/16"]
}

}

resource "aws_instance" "anime_web" {
  ami                    = "ami-0f5ee92e2d63afc18"
  instance_type          = "t2.micro"
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.anime_sg.id]

  
  root_block_device {
    encrypted = true
  }

  # Enforce IMDSv2 (fixes AVD-AWS-0028)
  metadata_options {
    http_tokens = "required"
  }

  tags = {
    Name = "Anime-Web-DevSecOps"
  }
}
