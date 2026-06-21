resource "aws_instance" "my_ec2" {
  ami        = "ami-0303e2e4a29f041a3"
  instance_type = "t3.micro"

  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]

  key_name = "web_server"
  associate_public_ip_address = true

    user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl start nginx
              systemctl enable nginx
              echo "<h1>EC2 Web Server is working</h1>" > /var/www/html/index.html
              EOF

  tags = {
 Name = "EC2_Web_Server"
  }
}