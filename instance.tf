resource "aws_instance" "example" {
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.mykey_pub.key_name}"

  # the security group
   vpc_security_group_ids = ["${aws_security_group.example-instance.id}"]
}
