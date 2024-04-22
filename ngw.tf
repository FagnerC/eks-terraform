resource "aws_eip" "eks-terraform_ngw_eip_1a" {
  vpc = "true"
  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-eip-1a"
    }
  )
}

resource "aws_eip" "eks-terraform_ngw_eip_1b" {
  vpc = "true"
  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-eip-1b"
    }
  )
}

resource "aws_nat_gateway" "eks-terraform_eks_ngw_1a" {
  allocation_id = aws_eip.eks-terraform_ngw_eip_1a.id
  subnet_id     = aws_subnet.eks-aws-subnet-public-1a.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-ngw-1a"
    }
  )
}

resource "aws_nat_gateway" "eks-terraform_eks_ngw_1b" {
  allocation_id = aws_eip.eks-terraform_ngw_eip_1b.id
  subnet_id     = aws_subnet.eks-aws-subnet-public-1b.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-ngw-1b"
    }
  )
}