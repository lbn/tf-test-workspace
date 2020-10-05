resource "null_resource" "resource1" {
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello world!"
    }
  }
}

resource "null_resource" "resource2" {
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello world 2!"
    }
  }
}

module "vpc" {
	source  = "9c5e338bfd16.test-env.scalr.com/env-svrcnchebt61e30/vpc/aws"
	version = "2.9.0"
}
