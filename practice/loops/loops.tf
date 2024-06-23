variable "list" {
  default = ["apple","guava"]
}

resource "null_resource" "fruits" {
  count = length(var.list)

  provisioner "local-exec" {
   command= "echo fruit name---${var.list[count.index]}"
  }
}