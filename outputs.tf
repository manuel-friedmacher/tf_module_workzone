output "cf_space_id" {
  value       = cloudfoundry_space.wz_space.id
  description = "Cloud Foundry space ID for Workzone."
}

output "workzone_api_service_instance_id" {
  value       = cloudfoundry_service_instance.workzone_api.id
  description = "ID of the Workzone API Cloud Foundry service instance."
}

output "task_center_service_instance_id" {
  value       = cloudfoundry_service_instance.task_center.id
  description = "ID of the Task Center Cloud Foundry service instance."
}
