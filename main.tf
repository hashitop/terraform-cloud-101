terraform {
  backend "remote" {
    organization = "kampanart-org"

    workspaces {
      name = "tf-lab"
    }
  }
}

resource "null_resource" "helloWorld" {
    provisioner "local-exec" {
        command = "echo hello world"
    }
}
