resource "aws_security_group" "anime_sg" {
  name        = "anime-web-sg"
  description = "Security group for Anime Web"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
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

resource "aws_instance" "anime_web" {
  ami                    = "ami-0f5ee92e2d63afc18"  
  instance_type          = "t2.micro"
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.anime_sg.id]

  tags = {
    Name = "Anime-Web-DevSecOps"
  }
}
