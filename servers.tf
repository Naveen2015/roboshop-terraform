resource "aws_instance" "instance" {
  for_each = var.components
  ami           = data.aws_ami.ami.image_id
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = [data.aws_security_group.allow-all.id]
  tags = {
    Name= each.value["name"]
  }
}

resource "null_resource" "provisioner" {
  depends_on = [aws_instance.instance,aws_route53_record.records]
  for_each = var.components
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = aws_instance.instance[each.value["name"]].private_ip
  }
  provisioner "remote-exec" {

    inline = [
      "rm -rf roboshop-shell",
      "git clone https://github.com/Naveen2015/roboshop-shell.git",
      "cd roboshop-shell",
      "sudo bash ${each.value["name"]}.sh"
    ]
  }
}

resource "aws_route53_record" "records" {
  for_each = var.components
  zone_id = "Z01562533IX3SEB52WHM7"
  name    = "${each.value["name"]}-dev.kruthikadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance[each.value["name"]].private_ip]
}
