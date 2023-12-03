module "billing_alert" {
  source = "binbashar/cost-billing-alarm/aws"

  aws_env = "taha"

  monthly_billing_threshold = 1
  currency = "USD"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = module.billing_alert.sns_topic_arns[0]
  protocol  = "email"
  endpoint  = "yhasinmuhammad123@gmail.com"
}

# output "sns_topic_arn" {
#   value = "${module.billing_alert.sns_topic_arn}"
# }