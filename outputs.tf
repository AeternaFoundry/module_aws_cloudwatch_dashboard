output "cloudwatch_dashboards_id" {
  description = "Map of id values across all cloudwatch_dashboards, keyed the same as var.cloudwatch_dashboards"
  value       = { for k, v in aws_cloudwatch_dashboard.cloudwatch_dashboards : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_dashboards_dashboard_arn" {
  description = "Map of dashboard_arn values across all cloudwatch_dashboards, keyed the same as var.cloudwatch_dashboards"
  value       = { for k, v in aws_cloudwatch_dashboard.cloudwatch_dashboards : k => v.dashboard_arn if v.dashboard_arn != null && length(v.dashboard_arn) > 0 }
}
output "cloudwatch_dashboards_dashboard_body" {
  description = "Map of dashboard_body values across all cloudwatch_dashboards, keyed the same as var.cloudwatch_dashboards"
  value       = { for k, v in aws_cloudwatch_dashboard.cloudwatch_dashboards : k => v.dashboard_body if v.dashboard_body != null && length(v.dashboard_body) > 0 }
}
output "cloudwatch_dashboards_dashboard_name" {
  description = "Map of dashboard_name values across all cloudwatch_dashboards, keyed the same as var.cloudwatch_dashboards"
  value       = { for k, v in aws_cloudwatch_dashboard.cloudwatch_dashboards : k => v.dashboard_name if v.dashboard_name != null && length(v.dashboard_name) > 0 }
}
output "cloudwatch_dashboards_region" {
  description = "Map of region values across all cloudwatch_dashboards, keyed the same as var.cloudwatch_dashboards"
  value       = { for k, v in aws_cloudwatch_dashboard.cloudwatch_dashboards : k => v.region if v.region != null && length(v.region) > 0 }
}

