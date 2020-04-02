variable "multiple" {
  default = 1
}  

resource "null_resource" "HelloProd" {
  count = var.multiple
  provisioner "local-exec" {
    command = "echo Hello Prod ${count.index + 1}!"
  }
}
