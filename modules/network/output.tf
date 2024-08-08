output "subnet-pub-1a" {
  value = aws_subnet.eks-aws-subnet-public-1a.id
}

output "subnet-pub-1b" {
  value = aws_subnet.eks-aws-subnet-public-1b.id
}

output "subnet-priv-1a" {
  value = aws_subnet.eks-aws-subnet-private-1a.id
}

output "subnet-priv-1b" {
  value = aws_subnet.eks-aws-subnet-private-1b.id
}   