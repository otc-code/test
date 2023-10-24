resource "random_pet" "pet" {
  prefix = var.prefix
  length = var.length
}

output "random_name" {
  description = "Randomly generated pet name"
  value       = random_pet.pet.id
}
