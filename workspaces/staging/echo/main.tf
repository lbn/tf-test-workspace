resource "null_resource" "echo" {
	provisioner "local-exec" {
		command = "echo text: $MYENV"
	}
}
