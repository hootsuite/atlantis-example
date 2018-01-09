module "ec2_etcd" {
  source        = "../aws/ec2"
  count         = "1"
  subnet_id     = ""
  instance_type = "t2.micro"
  name          = "instance"
  key_name      = "key"

  vpc_security_group_ids = []
  iam_instance_profile   = ""
}
