resource "aws_instance" "newinstance" {
  ami                    = "ami-085f9c64a9b75eed5"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.knsgq.id]

  tags = {
    Name        = "newinstance"
    description = "ec2forsshandicmp"
  }
}
