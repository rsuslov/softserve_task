resource null_resource "ansible_web" {
  depends_on = [
    "aws_instance.example"
  ]

  provisioner "local-exec" {
    command = "sleep 10"
  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id) AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key) ansible-playbook -u ubuntu --private-key '${var.PATH_TO_PRIVATE_KEY}' -i '${aws_instance.example.public_ip},' ansible/main.yml"
  }
}
