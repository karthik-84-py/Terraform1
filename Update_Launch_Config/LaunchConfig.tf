resource "aws_launch_configuration" "test" {
  image_id = "ami-bdf3ada76d97441d9ba145ea3f289be9"
  instance_type = "z4.medium"
  iam_instance_profile = "3a757ecc-114e-43f1-a7df-b1879415976c"
  key_name         = var.keyname
  security_groups  = var.security_groups
  # user_data_base64 = data.cloudinit_config.this.rendered

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "100"
    # volume_type           = "None"
  }

  lifecycle {
    # ignore_changes        = [user_data, user_data_base64, metadata_options]
    create_before_destroy = true
  }
}

 