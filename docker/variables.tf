variable "env" {
  description = "env: dev or prod"
}

variable "image" {
  description = "image_for_container"
  type = "map"
}

variable "container_name"{
  description = "name_of_container"
  type = "map"  
}

variable "internal_port"{
  description = "internal_port_for_container"
  type = "map"
}

variable "external_port"{
  description = "external_port_for_container"
  type = "map"
}

