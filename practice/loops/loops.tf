/*variable "list" {
  default = ["apple","guava"]
}

resource "null_resource" "fruits" {
  count = length(var.list)

  provisioner "local-exec" {
   command= "echo fruit name---${var.list[count.index]}"
  }
}
*/

variable "fruits" {
  default = {
    apple=10
    orange=20
    banana=15
  }
}


resource "null_resource" "dict_fruits" {
  for_each = var.fruits
  provisioner "local-exec" {
    command = "echo Fruits name: ${each.key}"
  }
}