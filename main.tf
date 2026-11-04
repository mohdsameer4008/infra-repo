
module "vpc" {
  source = "./MoDuLe_s/vpc"
}

module "sg" {
  source = "./MoDuLe_s/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./MoDuLe_s/ec2"
  instance_name = var.instance_name
  instance_type = var.instance_type
  ami_id = var.ami_id
}



module "ecr" {
    source = "./MoDuLe_s/ecr"
}