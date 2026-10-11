variable "endpoints_service_iam_bindings" {
  description = <<EOT
Map of endpoints_service_iam_bindings, attributes below
Required:
    - members
    - role
    - service_name
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members      = set(string)
    role         = string
    service_name = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

