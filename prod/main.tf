provider "aws" {
    region = "us-west-1"
}
module "infra_services" {
    source = "../modules/infra_services"
    public_subnet_cidr = ["172.31.0.0/24" , "172.31.1.0/24"]
    private_subnet_cidr = ["172.31.2.0/24" , "172.31.3.0/24"]
    vpc_cidr = "172.31.0.0/16"
    region = "us-west-1"
    project_vpc_name = "prod_vpc"
    project_igw_name = "prod_igw"
    dev_route_table_name = "prod_public_route_table"
    security_group_name = "prod_sec_grp_name"
    public_subnet_names = ["prod_public_subnet_1" , "prod_public_subnet_2"]
    private_subnet_names = ["prod_private_subnet_1" , "prod_private_subnet_2"]
}