variable "db_name" {
  description = "The name to use for the database"
  type        = string
  default     = "example_database_prod"
}

variable "db_password" {
  description = "The password for the database"
  type        = string
}
