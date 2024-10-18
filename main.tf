terraform {
  backend "s3" {
    bucket = "kaah-backend"
    region = "ap-south-1"
    key = "backend/terraform.tfstate"
    dynamodb_table = "backend-dynamoDB"
    
  }
}

resource "aws_instance" "instance-tg1"{
  ami = "ami-08718895af4dfa033"
  instance_type = "t2.micro"
  key_name = "new_jenkins"
  tags = {
    Name = "atlantis-terraform2"
  }
} 
