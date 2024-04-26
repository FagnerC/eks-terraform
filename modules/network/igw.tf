resource "aws_internet_gateway" "eks-terraform-igw" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-igw"
    }
  )
}

resource "aws_route_table" "eks-public_route_table" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eks-terraform-igw.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-pub-route-table"
    }
  )
}