output "endpoints_service_iam_bindings_id" {
  description = "Map of id values across all endpoints_service_iam_bindings, keyed the same as var.endpoints_service_iam_bindings except keys with no id are omitted"
  value       = { for k, v in google_endpoints_service_iam_binding.endpoints_service_iam_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "endpoints_service_iam_bindings_condition" {
  description = "Map of condition values across all endpoints_service_iam_bindings, keyed the same as var.endpoints_service_iam_bindings except keys with no condition are omitted"
  value       = { for k, v in google_endpoints_service_iam_binding.endpoints_service_iam_bindings : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "endpoints_service_iam_bindings_etag" {
  description = "Map of etag values across all endpoints_service_iam_bindings, keyed the same as var.endpoints_service_iam_bindings except keys with no etag are omitted"
  value       = { for k, v in google_endpoints_service_iam_binding.endpoints_service_iam_bindings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "endpoints_service_iam_bindings_members" {
  description = "Map of members values across all endpoints_service_iam_bindings, keyed the same as var.endpoints_service_iam_bindings except keys with no members are omitted"
  value       = { for k, v in google_endpoints_service_iam_binding.endpoints_service_iam_bindings : k => v.members if v.members != null && length(v.members) > 0 }
}
output "endpoints_service_iam_bindings_role" {
  description = "Map of role values across all endpoints_service_iam_bindings, keyed the same as var.endpoints_service_iam_bindings except keys with no role are omitted"
  value       = { for k, v in google_endpoints_service_iam_binding.endpoints_service_iam_bindings : k => v.role if v.role != null && length(v.role) > 0 }
}
output "endpoints_service_iam_bindings_service_name" {
  description = "Map of service_name values across all endpoints_service_iam_bindings, keyed the same as var.endpoints_service_iam_bindings except keys with no service_name are omitted"
  value       = { for k, v in google_endpoints_service_iam_binding.endpoints_service_iam_bindings : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

