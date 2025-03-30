resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "my_key" {
  key_name   = "Demo-tf01"
  public_key = tls_private_key.example.public_key_openssh 
}

resource "local_file" "private_key" {
  content  = tls_private_key.example.private_key_pem
  filename = "Demo-tf01.pem"
}

resource "aws_instance" "my_ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name = aws_key_pair.my_key.key_name

  tags = {
    Name = "MyEC2Instance"
  }
}
