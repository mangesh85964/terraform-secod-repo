provider "aws" {
 region = "ap-south-1"
}

resource "aws_instance" "ec2" {
 ami = "ami-0d63de463e6604d0a"
 instance_type = "t2.micro"
 tags = {
   Name = "Mymachine"
 }
}

resource "aws_eip" "eip" {
 domain = "vpc"
 instance = aws_instance.ec2.id
}

resource "aws_s3_bucket" "s3" {
  bucket = "mybucket-9865324562"
}
