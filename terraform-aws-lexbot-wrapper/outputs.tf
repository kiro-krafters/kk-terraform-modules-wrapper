output "bot_id" {
  description = "ID of the created Lex bot"
  value       = module.lex_bot.bot_id
}

output "bot_version" {
  description = "Version of the created Lex bot"
  value       = module.lex_bot.bot_version
}

output "bot_alias_id" {
  description = "ID of the created Lex bot alias"
  value       = module.lex_bot.bot_alias_id
}

output "bot_alias_arn" {
  description = "ARN of the created Lex bot alias"
  value       = module.lex_bot.bot_alias_arn
}
