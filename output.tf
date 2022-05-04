output "server_id"{
    value = "${null_resource.igabr.id}"
}

output "server_name"{
    value = "${random_pet.server.id}"
}