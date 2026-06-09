module "vpc" {

  source = "./modules/vpc"

  vpc_cidr   = var.vpc_cidr

  environment = var.environment

}

module "subnet" {

  source = "./modules/subnet"

  vpc_id = module.vpc.vpc_id

  public_subnet_cidr = var.public_subnet_cidr

  private_subnet_cidr = var.private_subnet_cidr

  public_az = "ap-southeast-1a"

  private_az = "ap-southeast-1b"

}

module "internet_gateway" {

  source = "./modules/internet-gateway"

  vpc_id = module.vpc.vpc_id

}

module "route_table" {

  source = "./modules/route-table"

  vpc_id = module.vpc.vpc_id

  igw_id = module.internet_gateway.igw_id

  public_subnet_id = module.subnet.public_subnet_id

}

module "security_group" {

  source = "./modules/security-group"

  vpc_id = module.vpc.vpc_id

}
