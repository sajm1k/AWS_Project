resource "aws_security_group" "ec2_security_group" {
  name        = "ec2-security-group"
  description = "Security group for EC2 instances"
  vpc_id      = aws_vpc.my_vpc.id
  tags = {
    Name = "EC2-SecurityGroup"
  }
}
  
resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.ec2_security_group.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
  description = "Allow SSH access [!From ANYHERE!]" 
  #Only for the sake of this example, not good for production use !Should be restricted!
  #Better to use cidr_ipv4 = "YOUR_IP/32"
}

resource "aws_vpc_security_group_ingress_rule" "http"{
    security_group_id = aws_security_group.ec2_security_group.id

    cidr_ipv4   = "0.0.0.0/0"
    from_port = 80
    ip_protocol = "tcp"
    to_port = 80
    description = "Allow HTTP access"
    
}

resource "aws_vpc_security_group_ingress_rule" "https"{
    security_group_id = aws_security_group.ec2_security_group.id

    cidr_ipv4   = "0.0.0.0/0"
    from_port = 443
    ip_protocol = "tcp"
    to_port = 443
    description = "Allow HTTPS access"
    
}

resource "aws_vpc_security_group_egress_rule" "outbound_traffic"{
    security_group_id = aws_security_group.ec2_security_group.id

    cidr_ipv4   = "0.0.0.0/0"
    ip_protocol = "-1"
    description = "Allow all outbound traffic"
}


