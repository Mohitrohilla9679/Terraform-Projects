In this project firstly I make a vpc
then, I make 2 subnets 1 public and 1 private
then, I make 1 internet gateway for internet access
then, I make 2 route tables 1 public and 1 private and assosciate subnets with route table (in public route table I attached igw)
then, I make security group and open port 22 for ssh and port 80 for http and open all outbound rules
then, I make an EC2 instance with users_data script for nginx installation.
