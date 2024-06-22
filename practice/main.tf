resource "aws_spot_instance_request" "testserver" {
  ami = "ami-0b4f379183e5706b9"
  spot_price    = "0.03"
  instance_type = "t3.micro"
  tags = {
    Name= "naveen"
  }
}