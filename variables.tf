variable "env" {
  description = "env: dev or prod"
}

variable "image" {
  description = "image_for_container"
  type = "map"
  default = {
    dev = "ghost:latest"
    prod = "ghost:alpine"
  }
}

variable "container_name"{
  description = "name_of_container"
  type = "map"  
  default = {
    dev = "development_blog"
    prod = "production_blog"
  }
}

variable "internal_port"{
  description = "internal_port_for_container"
  type = "map"
  default = {
    dev = "2368"
    prod = "2368"
  }
}

variable "external_port"{
  description = "external_port_for_container"
  type = "map"
  default = {
    dev = "8080"
    prod = "80"
  }
}

