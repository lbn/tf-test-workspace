resource null_resource cluster {
	count = 8
	provisioner "local-exec" {
		command = "echo hello ${count.index}!"
	}
}


variable test {
	default = "test"
}



