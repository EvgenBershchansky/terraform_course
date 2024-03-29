#----storage/main.tf----

# Create a random id
resource "random_id" "tf_bucket_id"{
    byte_length = 2
}

# Create S3 bucket
resource "aws_s3_bucket" "tf_code"{
    bucket = "${var.project_name}-${random_id.tf_bucket_id.hex}"
    acl = "private"
    force_destroy = true
    
    tags = {
        Name = "tf_bucket"
    }
}