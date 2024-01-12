# terraform_repo
a repo that contains terraform module and codes

# Example usage fro vpc module

module "my_vpc" {
    source = "github.com/vw-sruthi-santhy/terraform_repo//vpc_module?ref=main"
    vpc_cidr_block         = "10.0.0.0/16"
    vpc_name               = "my-vpc"
    subnet_cidr_blocks     = ["10.0.1.0/24", "10.0.2.0/24"]
    availability_zones     = ["us-west-2a", "us-west-2b"]
    map_public_ip_on_launch = true
}
