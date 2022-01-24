provider "aws"{
  region=var.region
}
 

resource "aws_instance" "web" {
  ami           = each.value.ami
  instance_type = var.type
  tags={
    Name=var.name
  }
}
