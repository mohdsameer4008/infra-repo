
output "subnet_1_id" {
  value = aws_subnet.my_subnet_1.id
}

output "subnet_2_id" {
  value = aws_subnet.my_subnet_2.id
}

output "route_table_id" {
  value = aws_route_table.project_route.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.project_igw.id
}
output "vpc_id" {
  value = aws_vpc.terraform_vpc.id
}
