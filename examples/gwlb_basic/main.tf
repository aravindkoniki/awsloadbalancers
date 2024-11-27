provider "aws" {
  region = var.region
}
 
module "gwlb" {
  source                     = "../../module"
  name_prefix                = var.name_prefix
  load_balancer_type         = var.load_balancer_type
  vpc_id                     = var.vpc_id
  subnets                    = var.subnets
  target_groups              = var.target_groups
  enable_deletion_protection = var.enable_deletion_protection
  http_tcp_listeners         = var.http_tcp_listeners
  ip_address_type            = var.ip_address_type
  tags                       = var.tags
}
