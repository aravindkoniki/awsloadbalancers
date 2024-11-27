provider "aws" {
  region = var.region
}

module "nlb" {
  source                     = "../../module"
  name_prefix                = var.name_prefix
  load_balancer_type         = var.load_balancer_type
  vpc_id                     = var.vpc_id
  subnets                    = var.subnets
  target_groups              = var.target_groups
  http_tcp_listeners         = var.http_tcp_listeners
  internal                   = var.internal
  enable_deletion_protection = var.enable_deletion_protection
  tags                       = var.tags
}
