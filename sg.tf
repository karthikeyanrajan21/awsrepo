resource "aws_security_group" "knsgq" {
  name        = "knsgq"
  description = "group for allowing SSH and ICMP"

  tags = {
    Name = "allowsshandicmp"
  }
}


resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.knsgq.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}


#resource "aws_vpc_security_group_ingress_rule" "allow_http" {
#  security_group_id = aws_security_group.knsgq.id
#  cidr_ipv4         = "0.0.0.0/0"
#  from_port         = 80
#  ip_protocol       = "tcp"
#  to_port           = 80
#}


resource "aws_vpc_security_group_egress_rule" "allow_all" {
  security_group_id = aws_security_group.knsgq.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"

}

