#create a VPC

resource "aws_vpc" "terraform_vpc" {
    cidr_block = var.vpc_cidr

    tags = {
        Name = "project_vpc"

    }
}

#create a two subnets
resource "aws_subnet" "my_subnet_1" {
    vpc_id = aws_vpc.terraform_vpc.id
    cidr_block = var.subnet_1_cidr

    tags = {
        Name = "public_subnet"  }
        
}   

resource "aws_subnet" "my_subnet_2" {
    vpc_id = aws_vpc.terraform_vpc.id
    cidr_block = var.subnet_2_cidr

    tags = {
        Name = "private_subnet"  }
        
}   

#create a internet gateway
resource "aws_internet_gateway" "project_igw" {
    vpc_id = aws_vpc.terraform_vpc.id
  
    tags = {
        Name = "project_igw"
    }
}

#create a route table and connecting it to the internet gateway

resource "aws_route_table" "project_route" {
    vpc_id = aws_vpc.terraform_vpc.id
      route {
        cidr_block = var.route_table_cidr
        gateway_id = aws_internet_gateway.project_igw.id
    }
    
    tags = {
        Name = "project_route"
    }
}

resource "aws_route_table_association" "my_route" {
    route_table_id = aws_route_table.project_route.id
    subnet_id = aws_subnet.my_subnet_1.id
}

resource "aws_route_table_association" "my_route_2" {
    route_table_id = aws_route_table.project_route.id
    subnet_id = aws_subnet.my_subnet_2.id
}



