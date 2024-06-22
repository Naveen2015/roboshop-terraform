resource "aws_instance" "testserver" {
  ami = "ami-0b4f379183e5706b9"
  spot_price    = "0.03"
  instance_type = "t4g.nano"
  tags = {
    Name= "naveen"
  }
}