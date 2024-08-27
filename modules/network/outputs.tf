output "vpc_cidr_block" {
  value = aws_vpc.main_vpc.cidr_block
}

output "public_subnets" {
  value = aws_subnet.public_subnets
}

output "private_subnets" {
  value = aws_subnet.private_subnets
}
