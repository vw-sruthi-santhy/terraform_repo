resource "aws_db_instance" "rds_instance" {
  identifier           = var.db_instance_identifier
  engine               = var.engine
  instance_class       = var.instance_class
  allocated_storage    = var.allocated_storage
  username      = var.admin_username
  password      = var.admin_password
  publicly_accessible  = false  # Change this based on your requirements
  tags                 = var.tags

  // Additional configurations can be added as needed..
}