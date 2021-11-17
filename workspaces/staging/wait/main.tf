terraform {
  backend "remote" {
    hostname = "2188636d0130.test-env.scalr.com"
    organization = "env-svrcnchebt61e30"

    workspaces {
      name = "test"
    }
  }
}

variable "duration" {
  type    = number
  default = 2400
}

resource "random_id" "server" {
  byte_length = 10

  provisioner "local-exec" {
    command = "cat .terraform.lock.hcl"
  }
}
resource "time_sleep" "wait" {
  create_duration = "${var.duration}s"
}

output "test" {
  value = random_id.server.dec
}

