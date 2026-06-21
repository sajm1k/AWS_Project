This project demonstrates Infrastructure as Code (IaC) using Terraform to provision and configure cloud infrastructure on AWS.
The goal was to deploy a fully functional EC2-based web server in a custom Virtual Private Cloud (VPC) environment.

The infrastructure includes:

Custom VPC with a public subnet
Internet Gateway for external connectivity
Route table configuration for internet access
Security Group with inbound rules (SSH, HTTP, HTTPS)
EC2 instance with a public IP address
Nginx web server deployed automatically using a user data script


After deployment, an EC2 instance is accessible via public IP address and serves a simple Nginx web page deployed automatically during provisioning.