resource "aws_subnet" "public_subnets" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = "true"

  tags = merge(
    var.tags,
    {
      Name = "subnet-${var.project_name}-public-tf"
    }
  )

}

resource "aws_subnet" "private_subnets" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = false

  tags = merge(
    var.tags,
    {
      Name = "subnet-${var.project_name}-private-tf"
    }
  )
}