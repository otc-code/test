variable "prefix" {
  description = "The prefix to be used for the random name"
  type        = string
}

variable "length" {
  description = "The length of the random name"
  type        = number
}

resource "random_pet" "pet" {
  prefix = var.prefix
  length = var.length
}

output "random_name" {
  description = "Randomly generated pet name"
  value       = random_pet.pet.id
}
