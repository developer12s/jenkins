provider "aws"{
  region=var.region
}
 

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.type
  tags={
    Name=var.name
  }
  key_name = "lokesh-vm-key"
}
