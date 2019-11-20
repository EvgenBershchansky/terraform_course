# Dowload the latest Ghost Image
module "image" {
  source = "./modules/image"
  image = "${lookup(var.image, var.env)}"
}

# Start the Container
module "container"{
  source = "./modules/container"
  image = "${module.image.image_out}"
  name = "${lookup(var.container_name, var.env)}"
  external_port = "${lookup(var.external_port, var.env)}"
  internal_port = "${lookup(var.internal_port, var.env)}"
}

resource "null_resource" "null_id"{
  provisioner "local-exec"{
    command = "echo ${module.container.container_name}:${module.container.ip} >> container.txt"
  }
}


