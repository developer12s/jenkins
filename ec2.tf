provider "aws"{
  region=var.region
  }
locals{
serverconfig = [
  for srv in var.ami : [
  ami = srv.ami, 
  ]
}
  locals {
  instances = flatten(local.serverconfig)
}
 

resource "aws_instance" "web" {
  for_each = {for server in local.instances}
  ami           = each.value.ami
  instance_type = var.type
  tags={
    Name=var.name
  }
}
