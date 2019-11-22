#----networking/main.tf----

resource "aws_vpc" "tf_vpc"{
    cidr_block = "${var.cidr_block}"
    enable_dns_hostnames = true
    enable_dns_support = true
    
    tags = {
        Name = "tf_course"
    }
}

resource "aws_internet_gateway" "tf_igw"{
    vpc_id = "${aws_vpc.tf_vpc.id}"
    
    tags = {
        Name = "tf_course"
    }
}

resource "aws_default_route_table" "default_rt"{
    default_route_table_id = "${aws_vpc.tf_vpc.default_route_table_id}"
    
    tags = {
        Name = "tf_default_rt"
    }
}

resource "aws_route_table" "public_rt" {
    vpc_id = "${aws_vpc.tf_vpc.id}"
    
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.tf_igw.id}"
    }
    
    tags = {
        Name = "tf_public_rt"
    }
}