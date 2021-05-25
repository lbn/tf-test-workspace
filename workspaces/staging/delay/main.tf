variable "duration" {
  type    = number
  default = 240
}

resource "time_sleep" "wait" {
  create_duration = "${var.duration}s"
}
