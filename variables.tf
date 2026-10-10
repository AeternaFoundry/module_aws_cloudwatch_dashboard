variable "cloudwatch_dashboards" {
  description = <<EOT
Map of cloudwatch_dashboards, attributes below
Required:
    - dashboard_body
    - dashboard_name
Optional:
    - region
EOT

  type = map(object({
    dashboard_body = string
    dashboard_name = string
    region         = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_dashboards : (
        length(v.dashboard_name) <= 255
      )
    ])
    error_message = "[from validDashboardName: invalid when len(value) > 255]"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

