data "aws_ami" "ami" {
  most_recent = true
  owners = ["973714476881"]
  name_regex = "Centos-8-DevOps-Practice"
}

output "amidata" {
  value = data.aws_ami.ami.image_id
}

resource "aws_instance" "frontend" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name= "frontend"
  }
}
resource "aws_instance" "mongod" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name= "mongod"
  }
}
resource "aws_instance" "catalogue" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name= "catalogue"
  }
}
resource "aws_instance" "redis" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name= "redis"
  }
}
resource "aws_instance" "user" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name= "user"
  }
}
resource "aws_instance" "cart" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name= "cart"
  }
}
resource "aws_instance" "mysql" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name= "mysql"
  }
}
resource "aws_instance" "shipping" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name= "shipping"
  }
}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name= "rabbitmq"
  }
}
resource "aws_instance" "payment" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    Name= "payment"
  }
}
