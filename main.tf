resource null_resource cluster {
	count = 10
	provisioner "local-exec" {
		command = "echo hello ${count.index}"
	}
}
