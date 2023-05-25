resource "aws_instance" "web" {
  ami           = "ami-05a36e1502605b4aa"
  instance_type = "t2.micro"
  key_name      = "centos_aws"
  subnet_id     = "subnet-0dec0c01e1786c695"
  tags = {
    Name = "demo_test"
}

root_block_device {
  volume_size           = "15"
  volume_type           = "gp2"     
  delete_on_termination = true
}
ebs_block_device {
  device_name           = "/dev/xvda"
  volume_size           = "20"
  volume_type           = "gp2"   
  delete_on_termination = true
}
}


