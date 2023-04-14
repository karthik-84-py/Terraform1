resource "aws_launch_configuration" "test7" {
  name = "lc3_nov16"
  image_id         = var.ami
  instance_type    = var.instance_type
  # key_name         = var.keyname
  # security_groups  = var.security_groups
   
  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "100"
    volume_type           = "None"
  }

  # lifecycle {
  #   # ignore_changes        = [user_data, user_data_base64, metadata_options]
  #   create_before_destroy = true
  # }
}