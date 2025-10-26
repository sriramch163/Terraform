variable "users" {
  description = "Map of users to create"
  type = map(object({
    name = string
  }))
  default = {
    "dev"   = { name = "developer-user" }
    "admin" = { name = "admin-user" }
    "test"  = { name = "test-user" }
  }
}