variable "sample"
{
  default = "naveen reddy"
}

output "result" {
  value = var.sample
}

output "result1" {
  value = "the value of the variable is ${var.sample}"
}