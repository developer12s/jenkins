resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.type
  region=var.region

  tags = {
    Name = var.name
  }
}
