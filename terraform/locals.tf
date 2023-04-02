locals {
  subnet_ids = { for k, v in aws_subnet.this : v.tags.Name => v.id }

  common_tags = {
    Project   = "TODO Auto Scaling App"
    CreatedAt = timestamp()
    ManagedBy = "Terraform"
    Owner     = "Rafael Vastag"
    Service   = var.service_name
  }
}