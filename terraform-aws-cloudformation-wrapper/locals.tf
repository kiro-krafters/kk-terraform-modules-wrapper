locals {
  stack_name = var.stack_name
  tags = merge(
    var.tags,
    {
      created_by = "terraform"
    },
  )
}
