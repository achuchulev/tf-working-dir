variable "multiple" {
  default = 1
}

resource "null_resource" "HelloDev" {
  count = var.multiple
  provisioner "local-exec" {
    command = "echo Hello Dev ${count.index + 1}!"
  }
}
