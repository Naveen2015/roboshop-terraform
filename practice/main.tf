variable "sample" {
  default = "naveen reddy"
}

output "result" {
  value = var.sample
}

output "result1" {
  value = "the value of the variable is ${var.sample}"
}

variable "mylist" {
  default = [naveen,0,reddy,test]
}

output "listvalues" {
  value = "the value from list ${var.mylist[2]}"
}