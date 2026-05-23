# Resource specific variables.
variable "name" {
  type        = string
  description = "Name of the resource."
  default     = ""
}

variable "description" {
  description = "Description of the Lambda Function, Alias or Layer."
  type        = string
  default     = ""
}

variable "handler" {
  description = "Lambda Function entrypoint in your code."
  type        = string
  default     = ""
}

variable "runtime" {
  description = "Lambda Function runtime."
  type        = string
  default     = ""
}

variable "attach" {
  description = "Configuration settings for attaching the resources."
  type        = any
  default     = {}
}

variable "allowed_triggers" {
  description = "Map of allowed triggers to create Lambda permissions."
  type        = map(any)
  default     = {}
}

variable "architectures" {
  description = "Instruction set architecture for your Lambda function. Valid values are x86_64 and arm64."
  type        = list(string)
  default     = null
}

variable "artifacts_dir" {
  description = "Directory name where artifacts should be stored."
  type        = string
  default     = "builds"
}

variable "assume_role_policy_statements" {
  description = "Map of dynamic policy statements for assuming Lambda Function role."
  type        = any
  default     = {}
}

variable "auth_type" {
  description = "The type of authentication that the Lambda Function URL uses."
  type        = string
  default     = "NONE"
}

variable "logging_configuration" {
  description = "Configuration settings related to logging."
  type        = any
  default     = {}
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = any
  default     = {}
}

variable "additional_tags" {
  description = "A map of tags to assign to other resources."
  type        = any
  default     = {}
}

variable "create" {
  description = "Configuration settings related to creation of resources."
  type        = any
  default     = {}
}

variable "code_signing_config_arn" {
  description = "Amazon Resource Name (ARN) for a Code Signing Configuration."
  type        = string
  default     = null
}

variable "compatible_architectures" {
  description = "A list of Architectures Lambda layer is compatible with. Currently x86_64 and arm64 can be specified."
  type        = list(string)
  default     = null
}

variable "compatible_runtimes" {
  description = "A list of Runtimes this layer is compatible with. Up to 5 runtimes can be specified."
  type        = list(string)
  default     = []
}

variable "cors" {
  description = "CORS settings to be used by the Lambda Function URL."
  type        = any
  default     = {}
}

variable "docker_configuration" {
  description = "Configuration settings related to docker."
  type        = any
  default     = {}
}

variable "dead_letter_target_arn" {
  description = "The ARN of an SNS topic or SQS queue to notify when an invocation fails."
  type        = string
  default     = null
}

variable "destination_on_failure" {
  description = "Amazon Resource Name (ARN) of the destination resource for failed asynchronous invocations."
  type        = string
  default     = null
}

variable "destination_on_success" {
  description = "Amazon Resource Name (ARN) of the destination resource for successful asynchronous invocations."
  type        = string
  default     = null
}

variable "environment_variables" {
  description = "A map that defines environment variables for the Lambda Function."
  type        = map(string)
  default     = {}
}

variable "ephemeral_storage_size" {
  description = "Amount of ephemeral storage (/tmp) in MB your Lambda Function can use at runtime. Valid value between 512 MB to 10,240 MB (10 GB)."
  type        = number
  default     = 512
}

variable "event_source_mapping" {
  description = "Map of event source mapping."
  type        = any
  default     = {}
}

variable "file_system_arn" {
  description = "The Amazon Resource Name (ARN) of the Amazon EFS Access Point that provides access to the file system."
  type        = string
  default     = null
}

variable "file_system_local_mount_path" {
  description = "The path where the function can access the file system, starting with /mnt/."
  type        = string
  default     = null
}

variable "hash_extra" {
  description = "The string to add into hashing function. Useful when building same source path for different functions."
  type        = string
  default     = ""
}

variable "ignore_source_code_hash" {
  description = "Whether to ignore changes to the function's source code hash. Set to true if you manage infrastructure and code deployments separately."
  type        = bool
  default     = false
}

variable "image_uri" {
  description = "The ECR image URI containing the function's deployment package."
  type        = string
  default     = null
}

variable "invoke_mode" {
  description = "Invoke mode of the Lambda Function URL. Valid values are BUFFERED (default) and RESPONSE_STREAM."
  type        = string
  default     = null
}

variable "ipv6_allowed_for_dual_stack" {
  description = "Allows outbound IPv6 traffic on VPC functions that are connected to dual-stack subnets."
  type        = bool
  default     = null
}

variable "kms_key_arn" {
  description = "The ARN of KMS key to use by your Lambda Function."
  type        = string
  default     = null
}

variable "lambda_at_edge" {
  description = "Set this to true if using Lambda@Edge, to enable publishing, limit the timeout, and allow edgelambda.amazonaws.com to invoke the function."
  type        = bool
  default     = false
}

variable "lambda_at_edge_logs_all_regions" {
  description = "Whether to specify a wildcard in IAM policy used by Lambda@Edge to allow logging in all regions."
  type        = bool
  default     = true
}

variable "layer_name" {
  description = "Name of Lambda Layer to create."
  type        = string
  default     = ""
}

variable "layer_skip_destroy" {
  description = "Whether to retain the old version of a previously deployed Lambda Layer."
  type        = bool
  default     = false
}

variable "layers" {
  description = "List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function."
  type        = list(string)
  default     = null
}

variable "license_info" {
  description = "License info for your Lambda Layer. Eg, MIT or full url of a license."
  type        = string
  default     = ""
}

variable "local_existing_package" {
  description = "The absolute path to an existing zip-file to use."
  type        = string
  default     = null
}

variable "maximum_event_age_in_seconds" {
  description = "Maximum age of a request that Lambda sends to a function for processing in seconds. Valid values between 60 and 21600."
  type        = number
  default     = null
}

variable "maximum_retry_attempts" {
  description = "Maximum number of times to retry when the function returns an error. Valid values between 0 and 2. Defaults to 2."
  type        = number
  default     = null
}

variable "memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime. Valid value between 128 MB to 10,240 MB (10 GB), in 64 MB increments."
  type        = number
  default     = 128
}

variable "iam_configuration" {
  description = "Configuration settings related to IAM."
  type        = any
  default     = {}
}

variable "s3_configuration" {
  description = "Configuration settings related to S3."
  type        = any
  default     = {}
}

variable "package_type" {
  description = "The Lambda deployment package type. Valid options: Zip or Image."
  type        = string
  default     = "Zip"
}

variable "provisioned_concurrent_executions" {
  description = "Amount of capacity to allocate. Set to 1 or greater to enable, or set to 0 to disable provisioned concurrency."
  type        = number
  default     = -1
}

variable "publish" {
  description = "Whether to publish creation/change as new Lambda Function Version."
  type        = bool
  default     = false
}

variable "recreate_missing_package" {
  description = "Whether to recreate missing Lambda package if it is missing locally or not."
  type        = bool
  default     = true
}

variable "recursive_loop" {
  description = "Lambda function recursion configuration. Valid values are Allow or Terminate."
  type        = string
  default     = null
}

variable "replace_security_groups_on_destroy" {
  description = "(Optional) When true, all security groups defined in vpc_security_group_ids will be replaced with the default security group after the function is destroyed. Set the replacement_security_group_ids variable to use a custom list of security groups for replacement instead."
  type        = bool
  default     = null
}

variable "replacement_security_group_ids" {
  description = "(Optional) List of security group IDs to assign to orphaned Lambda function network interfaces upon destruction. replace_security_groups_on_destroy must be set to true to use this attribute."
  type        = list(string)
  default     = null
}

variable "reserved_concurrent_executions" {
  description = "The amount of reserved concurrent executions for this Lambda Function. A value of 0 disables Lambda Function from being triggered and -1 removes any concurrency limitations. Defaults to Unreserved Concurrency Limits -1."
  type        = number
  default     = -1
}

variable "skip_destroy" {
  description = "Set to true if you do not wish the function to be deleted at destroy time, and instead just remove the function from the Terraform state. Useful for Lambda@Edge functions attached to CloudFront distributions."
  type        = bool
  default     = null
}

variable "snap_start" {
  description = "(Optional) Snap start settings for low-latency startups."
  type        = bool
  default     = false
}

variable "source_path" {
  description = "The absolute path to a local file or directory containing your Lambda source code."
  type        = any
  default     = null
}

variable "timeout" {
  description = "The amount of time your Lambda Function has to run in seconds."
  type        = number
  default     = 3
}

variable "timeouts" {
  description = "Define maximum timeout for creating, updating, and deleting Lambda Function resources."
  type        = map(string)
  default     = {}
}

variable "tracing_mode" {
  description = "Tracing mode of the Lambda Function. Valid value can be either PassThrough or Active."
  type        = string
  default     = null
}

variable "trigger_on_package_timestamp" {
  description = "Whether to recreate the Lambda package if the timestamp changes."
  type        = bool
  default     = true
}

variable "trusted_entities" {
  description = "List of additional trusted entities for assuming Lambda Function role."
  type        = any
  default     = []
}

variable "vpc_security_group_ids" {
  description = "List of security group ids when Lambda Function should run in the VPC."
  type        = list(string)
  default     = null
}

variable "vpc_subnet_ids" {
  description = "List of subnet ids when Lambda Function should run in the VPC. Usually private or intra subnets."
  type        = list(string)
  default     = null
}

variable "resource_type" {
  description = "The type of Lambda resource."
  type        = string
  default     = "FUNCTION"
  validation {
    condition     = contains(["FUNCTION"], var.resource_type)
    error_message = "Invalid resource type. Accepted value is 'FUNCTION'."
  }
}
