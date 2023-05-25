resource "aws_instance" "web" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"
  key_name      = "jagruthi"
  subnet_id     = "subnet-005271450b9ce5a71"
  tags = {
    Name = "demo_test_new"
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


