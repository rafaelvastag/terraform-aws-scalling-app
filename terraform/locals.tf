locals {
  common_tags = {
    Project   = "TODO Auto Scaling App"
    CreatedAt = timestamp()
    ManagedBy = "Terraform"
    Owner     = "Rafael Vastag"
    Service   = var.service_name
  }
}