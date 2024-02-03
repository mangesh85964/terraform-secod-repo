resource "aws_instance" "ec2" {
 ami = "ami-0d63de463e6604d0a"
 instance_type = "t2.micro"

 tags = {
  Name = "terraform-ins"
 }
}

resource "aws_eip" "eip" {
 domain = "vpc"
 instance = aws_instance.ec2.id
}