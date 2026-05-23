module "s3_bucket_stack" {
  source        = "../"
  name          = "simple-s3-bucket-stack"
  template_body = file("${path.module}/templates/example.yaml")
  parameters = {
    BucketName  = "my-unique-bucket-name-2024"
    Environment = "dev"
  }
  tags = {
    Environment = "Development"
    Project     = "Demo"
  }
}
