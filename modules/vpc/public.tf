#### Public Subnets

# Public Subnet on eu-west-1a
resource "aws_subnet" "public_subnet_eu-west-1a" {
  vpc_id                  = "${aws_vpc.cluster_vpc.id}"
  cidr_block              = "10.0.0.0/20"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-1a"

  tags = {
    Name = "cluster-public-subnet-1"
  }
}

# Public Subnet on eu-west-1b
resource "aws_subnet" "public_subnet_eu-west-1b" {
  vpc_id                  = "${aws_vpc.cluster_vpc.id}"
  cidr_block              = "10.0.16.0/20"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-1b"

  tags = {
    Name = "cluster-public-subnet-2"
  }
}

# Associate subnet public_subnet_eu-west-1a to public route table
resource "aws_route_table_association" "public_subnet_eu-west-1a_association" {
  subnet_id      = "${aws_subnet.public_subnet_eu-west-1a.id}"
  route_table_id = "${aws_vpc.cluster_vpc.main_route_table_id}"
}

# Associate subnet public_subnet_eu-west-1b to public route table
resource "aws_route_table_association" "public_subnet_eu-west-1b_association" {
  subnet_id      = "${aws_subnet.public_subnet_eu-west-1b.id}"
  route_table_id = "${aws_vpc.cluster_vpc.main_route_table_id}"
}
