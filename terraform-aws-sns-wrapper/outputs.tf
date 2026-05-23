output "topic_arn" {
  description = "The ARNs of all SNS topics"
  value = {
    for topic_key, topic_module in module.sns :
    topic_key => topic_module.topic_arn
  }
}

output "topic_id" {
  description = "The IDs of all SNS topics"
  value = {
    for topic_key, topic_module in module.sns :
    topic_key => topic_module.topic_id
  }
}

output "topic_name" {
  description = "The names of all SNS topics"
  value = {
    for topic_key, topic_module in module.sns :
    topic_key => topic_module.topic_name
  }
}
