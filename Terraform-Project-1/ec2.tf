resource "aws_instance" "tfp" {
  ami = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  subnet_id = aws_subnet.tfp-pub.id

  tags = {
    Name = "web-server"
  }

  vpc_security_group_ids = [aws_security_group.tfp.id]

  root_block_device {
    volume_size = 15
    volume_type = "gp2"
    delete_on_termination = true

    tags = {
      Name = "web-server-vol"
    }
  }
  
user_data = file("script.sh")

}