provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "rds" {
  identifier             = var.db_identifier
  instance_class         = var.size
  allocated_storage      = var.allocated_storage
  max_allocated_storage  = var.max_allocated_storage
  storage_type           = var.storage_type
  engine                 = "postgres"
  engine_version         = "15.4"
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  vpc_security_group_ids = var.security_group_ids
  publicly_accessible    = false
  multi_az               = var.multi_az

  auto_minor_version_upgrade            = false
  deletion_protection                   = true
  apply_immediately                     = true
  performance_insights_enabled          = var.performance_insights
  performance_insights_retention_period = 7
  performance_insights_kms_key_id       = var.kms_key_id


  backup_retention_period = 7
  copy_tags_to_snapshot   = true
  backup_window           = var.backup_window
  storage_encrypted       = true
  skip_final_snapshot     = true
}