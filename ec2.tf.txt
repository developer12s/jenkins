resource "aws_instance" "web" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"
  region="us-east-1"

  tags = {
    Name = "HelloWorld"
  }
}