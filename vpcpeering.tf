# Provider Configuration
provider "aws" {
  region = "us-east-1"
}

# Step 1: Create VPCs with Unique CIDR Blocks
resource "aws_vpc" "vpc_1" {
  cidr_block = "10.1.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "VPC-1"
  }
}

resource "aws_vpc" "vpc_2" {
  cidr_block = "10.2.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "VPC-2"
  }
}

# Step 2: Create VPC Peering Connection
resource "aws_vpc_peering_connection" "peer" {
  vpc_id        = aws_vpc.vpc_1.id
  peer_vpc_id   = aws_vpc.vpc_2.id
  auto_accept   = false
  tags = {
    Name = "VPC-Peering"
  }
}

# Step 3: Update Route Tables to Allow Traffic Between VPCs
resource "aws_route_table" "rt_vpc_1" {
  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_route" "route_vpc_1_to_vpc_2" {
  route_table_id         = aws_route_table.rt_vpc_1.id
  destination_cidr_block = "10.2.0.0/16"
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
}

resource "aws_route_table" "rt_vpc_2" {
  vpc_id = aws_vpc.vpc_2.id
}

resource "aws_route" "route_vpc_2_to_vpc_1" {
  route_table_id         = aws_route_table.rt_vpc_2.id
  destination_cidr_block = "10.1.0.0/16"
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
}

# Step 4: Launch EC2 Instances for Testing Connectivity

# Launch EC2 Instance in VPC 1
resource "aws_instance" "ec2_vpc_1" {
  ami           = "ami-0c55b159cbfafe1f0" # Example: Amazon Linux 2 AMI
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_vpc_1.id
  associate_public_ip_address = true

  tags = {
    Name = "EC2-Instance-VPC-1"
  }
}

# Launch EC2 Instance in VPC 2
resource "aws_instance" "ec2_vpc_2" {
  ami           = "ami-0c55b159cbfafe1f0" # Example: Amazon Linux 2 AMI
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_vpc_2.id
  associate_public_ip_address = true

  tags = {
    Name = "EC2-Instance-VPC-2"
  }
}

# Step 5: Test EC2 Instance Connectivity (Ping Test)
# (The Terraform script itself won't ping instances, but you can SSH into EC2s and manually run tests like `ping`.)

# Step 6: Elastic IP Setup for EC2 Instance (if needed for public access)
resource "aws_eip" "ec2_eip" {
  instance = aws_instance.ec2_vpc_1.id
}

# Optional Cleanup: Terminate Resources (for future use in a script)
# terraform destroy can be used to remove all resources created.

