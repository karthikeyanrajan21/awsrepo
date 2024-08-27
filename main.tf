
provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
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

resource "aws_instance" "my_instance" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t2.micro"
  key_name      = "MyKeyPair"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "MyInstance"
  }
}

