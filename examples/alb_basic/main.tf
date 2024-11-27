provider "aws" {
  region = var.region
}

resource "aws_instance" "my_app_ex_1" {
  ami           = "ami-01be94ae58414ab2e"
  subnet_id     = var.subnets[0]
  instance_type = "t2.micro"
  tags          = var.tags
}

resource "aws_instance" "my_app_ex_2" {
  ami           = "ami-01be94ae58414ab2e"
  subnet_id     = var.subnets[0]
  instance_type = "t2.micro"
  tags          = var.tags
}

module "alb" {
  source             = "../../module"
  name_prefix        = var.name_prefix
  load_balancer_type = var.load_balancer_type
  vpc_id             = var.vpc_id
  subnets            = var.subnets
  security_groups    = var.security_groups
  target_groups = [
    {
      name_prefix      = "test-",
      backend_protocol = "HTTP",
      backend_port     = 80,
      target_type      = "instance",
      targets = [
        {
          target_id = "${aws_instance.my_app_ex_1.id}"
          port      = 80
        },
        {
          target_id = "${aws_instance.my_app_ex_2.id}"
          port      = 80
        }
      ]
    }
  ]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      action_type        = "forward"
      target_group_index = 0
    }
  ]
  enable_deletion_protection = var.enable_deletion_protection
  tags                       = var.tags
}
