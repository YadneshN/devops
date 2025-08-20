provider "aws" {
  region = "ap-south-1"  # Change to your desired AWS region
}

resource "aws_instance" "web" {
  ami                    = "ami-0c7217cdde317cfec" # Update to latest AMI for your region/OS
  instance_type          = "t2.micro"              # Free Tier eligible
  subnet_id              = "<your-subnet-id>"
  vpc_security_group_ids = ["<your-security-group-id>"]
  key_name               = "<your-key-pair-name>"  # Optional, if using a key pair

  associate_public_ip_address = true

  tags = {
    Name = "TerraformFreeTierEC2Instance"
  }
}
