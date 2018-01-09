resource "aws_instance" "ec2" {
  count                = "${var.count}"
  ami                  = "${var.image_id}"
  instance_type        = "${var.instance_type}"
  key_name             = "${var.key_name}"
  user_data            = "${var.user_data}"
  monitoring           = "${var.monitoring}"
  iam_instance_profile = "${var.iam_instance_profile}"

  associate_public_ip_address = "${var.associate_public_ip_address}"
  ipv6_address_count          = "${var.ipv6_address_count}"
  ipv6_addresses              = "${var.ipv6_addresses}"
  source_dest_check           = "${var.source_dest_check}"
  subnet_id                   = "${var.subnet_id}"
  vpc_security_group_ids      = ["${var.vpc_security_group_ids}"]

  ebs_optimized                        = "${var.ebs_optimized}"
  root_block_device                    = "${var.root_block_device}"
  ebs_block_device                     = "${var.ebs_block_device}"
  ephemeral_block_device               = "${var.ephemeral_block_device}"
  disable_api_termination              = "${var.disable_api_termination}"
  instance_initiated_shutdown_behavior = "${var.instance_initiated_shutdown_behavior}"
  placement_group                      = "${var.placement_group}"
  tenancy                              = "${var.tenancy}"

  tags = {
    Name         = "${var.name}"
  }
}
