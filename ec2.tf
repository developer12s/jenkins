resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.type
  region="us-east-1"

  tags = {
    Name = var.name
  }
}
