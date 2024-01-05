# modules/generic_rds_instance/main.tf

variable "db_instance_identifier" {
  description = "The identifier for the DB instance."
}

variable "engine" {
  description = "The name of the database engine to be used for the DB instance"
  default     = "mysql"
}

variable "instance_class" {
  description = "The compute and memory capacity of the DB instance"
  default     = "db.t2.micro"
}

variable "allocated_storage" {
  description = "The amount of storage (in gibibytes) to allocate to the DB instance"
  default     = 20
}

variable "admin_username" {
  description = "The name of the master user for the DB instance"
}

variable "admin_password" {
  description = "The password for the master user"
}

variable "tags" {
  description = "A map of tags to apply to the DB instance"
  default     = {}
}




