resource "aws_instance" "testserver" {
  ami = "ami-0b4f379183e5706b9"
  instance_market_options {
    spot_options {
      max_price = 0.0031
    }
  }
  instance_type = "t4g.nano"
  tags = {
    Name= "naveen"
  }
}