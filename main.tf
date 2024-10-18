resource "aws_instance" "instance-tag1"{
  ami = "ami-08718895af4dfa033"
  instance_type = "t2.micro"
  key_name = "new_jenkins"
  tags = {
    Name = "terraform-instance1"
  }
} 