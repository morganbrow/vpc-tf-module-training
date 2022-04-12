# Creating the VPC
resource "aws_vpc" "main" {
  cidr_block = "192.168.0.0/16"
  tags = {
      Name = "talent-academy-vpc"
  }
}

#Creating the internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.project_name}-igw"
  }
}
#Creating the Elastic IP
resource "aws_eip" "nat_eip" {
  vpc = true
}
# Actually creating the nat gateway
resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id  
  subnet_id = aws_subnet.public.id
  tags = {
    Name = "gw NAT"
  }

  #To ensure proper ordering, it is reccommmeded to ass an explicit dependency on the Internet Gateway for the VPC.connection {
  depends_on = [aws_internet_gateway.igw]
  
}
resource "aws_vpc_endpoint" "ec2messages" {
  
}
resource "aws_vpc_endpoint" "ssm" {
  
}
resource "aws_vpc_endpoint" "ssmmessages" {
  
}