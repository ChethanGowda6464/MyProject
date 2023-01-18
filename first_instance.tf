provider "aws" {
  region = "ap-south-1"
}

# creating instance
resource "aws_instance" "first_instance" {
  ami                    = "ami-0cca134ec43cf708f"
  instance_type          = "t2.micro"
  availability_zone      = "ap-south-1a"
  key_name               = "dev_key"
  vpc_security_group_ids = ["sg-00c8046d7201c1a29"]

  tags = {
    Name = "first_instance-1"
  }
}