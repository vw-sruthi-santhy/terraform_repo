
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.subnet_cidr_blocks[0] // Assuming the first CIDR block is for public subnet
  availability_zone       = var.availability_zones[0] // Assuming the first availability zone is for public subnet
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id          = aws_vpc.my_vpc.id
  cidr_block      = var.subnet_cidr_blocks[1] // Assuming the second CIDR block is for private subnet.
  availability_zone = var.availability_zones[1] // Assuming the second availability zone is for private subnet

  tags = {
    Name = "Private Subnet"
  }
}

# You can add more resources and configurations as needed.
