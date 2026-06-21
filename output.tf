output "vpc_id" {
  description = "ID of vpc"
  value       = aws_vpc.my_vpc.id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  description = "Private subnet ID"
  value       = aws_subnet.private_subnet.id
}

output "aws_internet_gateway" {
  description = "Internet gateway ID"
  value       = aws_internet_gateway.internet_gateway.id
}

output "aws_nat_gateway" {
  description = "NAT gateway ID"
  value       = aws_nat_gateway.nat_gateway.id
}

output "ec2_public_ip" {
  value = aws_instance.my_ec2.public_ip
}