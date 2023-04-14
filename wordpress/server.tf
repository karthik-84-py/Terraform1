resource "aws_instance" "server1" {
  ami = "${var.ami}"
  instance_type = "z4.large"
  subnet_id = "${var.subnet}"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  key_name = "${var.keyname}"
  user_data = "${file("userdata_ubuntu.tpl")}"
  tags = {
  Name      = "wordpress-1",
  CreatedBy = "Terraform"
  }
}
resource "aws_eip" "wp-eip1" {
  count = 1
  instance = element(aws_instance.server1.*.id, count.index)
  vpc      = true
}

