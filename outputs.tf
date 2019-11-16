#Output name and ip address
output "container_name"{
  value = "${module.container.container_name}"
}

output "IP_address"{
  value = "${module.container.ip}"
}

