provider "aws" {
    region = "${var.aws_region}"
}

# Deploy storage resource
module "storage" {
    source = "./modules/storage"
    project_name = "${var.project_name}"
}

module "networking"{
    source = "./modules/networking"
    cidr_block = "${var.cidr_block}"
    
    
}