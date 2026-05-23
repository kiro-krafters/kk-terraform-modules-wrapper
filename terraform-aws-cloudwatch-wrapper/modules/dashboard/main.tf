module "dashboard" {
  source = "git::https://github.com/kiro-krafters/kk-terraform-modules.git//terraform-aws-cloudwatch//modules//dashboard?ref=main"
  name   = var.name
  body   = var.body
}
