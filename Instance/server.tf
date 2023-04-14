resource "aws_security_group" "allow_all_1" {
  name        = "allow_all_sep1"
  description = "Allow all traffic"
  vpc_id      = "${var.vpc}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



resource "aws_instance" "server1" {
  ami = "${var.ami}"
  instance_type = "t2.nano"
  subnet_id = "${var.subnet}"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  key_name = "${var.keyname}"
  user_data = "${file("userdata_ubuntu_s1.tpl")}"
  tags = {
  Name      = "server-1-dvpc-1",
  CreatedBy = "Terraform"
  }
}
resource "aws_eip" "eip1" {
  count = 1
  instance = element(aws_instance.server1.*.id, count.index)
  vpc      = true
}

resource "aws_instance" "server2" {
  ami = "${var.ami}"
  instance_type = "t2.micro"
  subnet_id = "${var.subnet}"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  key_name = "${var.keyname}"
  user_data = "${file("userdata_ubuntu_s2.tpl")}"
  tags = {
  Name      = "server-2-dpvc-2",
  CreatedBy = "Terraform"
  }
}
resource "aws_eip" "eip2" {
  count = 1
  instance = element(aws_instance.server2.*.id, count.index)
  vpc      = true
}
