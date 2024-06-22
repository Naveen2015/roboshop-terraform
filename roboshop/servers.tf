data "aws_ami" "ami" {
  most_recent = true
  owners = ["973714476881"]
  name_regex = "Centos-8-DevOps-Practice"
}


resource "aws_instance" "frontend" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  tags = {
    Name= "frontend"
  }
}
resource "aws_instance" "mongod" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  tags = {
    Name= "mongod"
  }
}
resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  tags = {
    Name= "catalogue"
  }
}
resource "aws_instance" "redis" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  tags = {
    Name= "redis"
  }
}
resource "aws_instance" "user" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  tags = {
    Name= "user"
  }
}
resource "aws_instance" "cart" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  tags = {
    Name= "cart"
  }
}
resource "aws_instance" "mysql" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  tags = {
    Name= "mysql"
  }
}
resource "aws_instance" "shipping" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  tags = {
    Name= "shipping"
  }
}
resource "aws_instance" "rabbitmq" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  tags = {
    Name= "rabbitmq"
  }
}
resource "aws_instance" "payment" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  tags = {
    Name= "payment"
  }
}
