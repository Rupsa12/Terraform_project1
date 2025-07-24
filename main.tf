provider "aws" {
  region = var.region
  access_key = "xyz"
  secret_key = "xyz"
}

resource "aws_instance" "web" {
  ami           = lookup(var.ami_map, var.region, "ami-defaultfallback")
  instance_type = "t2.micro"

  tags = {
    Name = "WebServer-${var.region}"
  }
}