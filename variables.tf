variable "db_name" {
  description = "Unique name to assign to RDS instance"
  type        = string
  default     = "postgres"
}

variable "db_password" {
  description = "RDS root user password"
  sensitive   = true
}

variable "db_identifier" {
  description = "The database identifier"
  type        = string
}

variable "db_username" {
  description = "RDS root username"
  type        = string
  default     = "postgres"
}

variable "vpc_id" {
  description = "The VPC ID where the RDS instance will be deployed"
  type        = string
  default     = "vpc-0b867e0f29f148dd8"
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the RDS instance"
  type        = list(string)
  default     = ["sg-0e9b7627dd34dcfa4"]
}

variable "size" {
  description = "The size of the RDS instance"
  type        = string
  default     = "db.t4g.small"
}

variable "allocated_storage" {
  description = "The amount of storage to allocate to the RDS instance"
  type        = number
  default     = 20
}

variable "max_allocated_storage" {
  description = "The maximum amount of storage to allocate to the RDS instance"
  type        = number
  default     = 100
}

variable "storage_type" {
  description = "The storage type to use for the RDS instance"
  type        = string
  default     = "gp3"
}

variable "multi_az" {
  description = "Whether to deploy the RDS instance in multiple availability zones"
  type        = bool
  default     = false
}

variable "performance_insights" {
  description = "Whether to enable performance insights for the RDS instance"
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "The KMS key ID to use for encrypting the RDS instance"
  type        = string
  default     = "arn:aws:kms:us-east-1:904233132450:key/7d81731b-30f9-4c95-ba25-b07f9f88db58"
}

variable "backup_window" {
  description = "The daily time range during which automated backups are created"
  type        = string
  default     = "03:00-04:00"
}
