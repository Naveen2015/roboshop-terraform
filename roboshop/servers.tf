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

resource "aws_route53_record" "frontend" {
  zone_id = Z01562533IX3SEB52WHM7
  name    = "frontend-dev.kruthikadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
resource "aws_route53_record" "mongod" {
  zone_id = Z01562533IX3SEB52WHM7
  name    = "mongod-dev.kruthikadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongod.private_ip]
}
resource "aws_route53_record" "catalogue" {
  zone_id = Z01562533IX3SEB52WHM7
  name    = "catalogue-dev.kruthikadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}
resource "aws_route53_record" "cart" {
  zone_id = Z01562533IX3SEB52WHM7
  name    = "cart-dev.kruthikadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}
resource "aws_route53_record" "redis" {
  zone_id = Z01562533IX3SEB52WHM7
  name    = "redis-dev.kruthikadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}
resource "aws_route53_record" "user" {
  zone_id = Z01562533IX3SEB52WHM7
  name    = "user-dev.kruthikadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}
resource "aws_route53_record" "mysql" {
  zone_id = Z01562533IX3SEB52WHM7
  name    = "mysql-dev.kruthikadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
resource "aws_route53_record" "shipping" {
  zone_id = Z01562533IX3SEB52WHM7
  name    = "shipping-dev.kruthikadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = Z01562533IX3SEB52WHM7
  name    = "rabbitmq-dev.kruthikadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
resource "aws_route53_record" "payment" {
  zone_id = Z01562533IX3SEB52WHM7
  name    = "payment-dev.kruthikadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}