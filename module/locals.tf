locals {
  name = var.env != "" ? "${var.component_name}-${var.env}" : var.component_name
  db_commands= [
    "rm -rf roboshop-shell",
    "git clone https://github.com/Naveen2015/roboshop-shell.git",
    "cd roboshop-shell",
    "sudo bash ${var.component_name}.sh ${var.password}"
  ]
  app_commands= [
    "sudo labauto anisible",
    "sudo ansible-pull -i localhost, -u https://github.com/Naveen2015/roboshop-ansible.git roboshop.yml -e role_name = ${var.component_name} -e env= ${var.env}"
  ]
}