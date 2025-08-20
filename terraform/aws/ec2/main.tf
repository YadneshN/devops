provider "aws" {
  region = "ap-south-1"  # Change to your desired AWS region
}

resource "aws_instance" "web" {
  ami                    = "ami-0f918f7e67a3323f0" # Update to latest AMI for your region/OS
  instance_type          = "t2.micro"              # Free Tier eligible
  vpc_security_group_ids = ["sg-0bfc6a923f9cba258"] # Update your security group
  key_name               = "yadnesh_key"  # Optional, if using a key pair


  tags = {
    Name = "TerraformFreeTierEC2Instance"
  }
}
