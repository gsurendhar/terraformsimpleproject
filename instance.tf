resource "aws_instance" "MYEC2" {
  ami                    = "ami-053b0d53c279acc90"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["$(aws_security_group.MYSG.id)"]
  # security_groups = aws_security_group.surisg.id
  # vpc_id    = aws_vpc.VPC.id
  subnet_id = aws_subnet.subnet-1.id
  key_name  = "linux"

  tags = {
    Name = "MYEC2-1"
  }
}