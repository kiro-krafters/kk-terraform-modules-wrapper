module "dashboard" {
  source = "git@github.com:CA-Bridge/ccaas-terraform-modules.git//terraform-aws-cloudwatch//modules//dashboard?ref=v1.0.0"
  name   = var.name
  body   = var.body
}
