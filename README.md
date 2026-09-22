# tf_module_workzone
Subscribe to SAP Build Work Zone Standard Edition and SAP Task Center.

## Prerequisites

- A SAP BTP subaccount with Cloud Foundry enabled.
- A Cloud Foundry organization ID from `tf_module_enable_cf`.
- SAP BTP and Cloud Foundry provider credentials with permissions to create subscriptions, service instances, service keys, spaces, and space roles.
- A platform identity-provider group for Workzone administrators.

Apply this module after the Cloud Foundry environment is available. The module creates a Cloud Foundry space, subscribes the subaccount to Workzone, and provisions Workzone API and Task Center service instances. Terraform state may contain service-key credentials; protect it accordingly.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.14.0 |
| <a name="requirement_btp"></a> [btp](#requirement\_btp) | >= 1.22 |
| <a name="requirement_cloudfoundry"></a> [cloudfoundry](#requirement\_cloudfoundry) | >= 1.15 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_btp"></a> [btp](#provider\_btp) | >= 1.22 |
| <a name="provider_cloudfoundry"></a> [cloudfoundry](#provider\_cloudfoundry) | >= 1.15 |
| <a name="provider_time"></a> [time](#provider\_time) | n/a |

## Resources

| Name | Type |
|------|------|
| [btp_subaccount_entitlement.task_center_entitlement](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_entitlement) | resource |
| [btp_subaccount_entitlement.workzone_api_entitlement](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_entitlement) | resource |
| [btp_subaccount_entitlement.workzone_entitlement](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_entitlement) | resource |
| [btp_subaccount_role_collection_assignment.wz_administrators](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection_assignment) | resource |
| [btp_subaccount_subscription.workzone](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_subscription) | resource |
| [cloudfoundry_service_credential_binding.task_center_service_key](https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/service_credential_binding) | resource |
| [cloudfoundry_service_credential_binding.workzone_api_service_key](https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/service_credential_binding) | resource |
| [cloudfoundry_service_instance.task_center](https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/service_instance) | resource |
| [cloudfoundry_service_instance.workzone_api](https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/service_instance) | resource |
| [cloudfoundry_space.wz_space](https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/space) | resource |
| [cloudfoundry_space_role.space_developer](https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/space_role) | resource |
| [cloudfoundry_space_role.space_manager](https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/space_role) | resource |
| [time_sleep.wait_for_cf_permissions](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_btp_platform_idp"></a> [btp\_platform\_idp](#input\_btp\_platform\_idp) | FQDN of the Platform Identity Provider. | `string` | n/a | yes |
| <a name="input_cf_administrator"></a> [cf\_administrator](#input\_cf\_administrator) | Email address of the user to be added to the Cloud Foundry space. | `string` | n/a | yes |
| <a name="input_cf_org_id"></a> [cf\_org\_id](#input\_cf\_org\_id) | ID of the Cloud Foundry organization. | `string` | n/a | yes |
| <a name="input_cf_space_name"></a> [cf\_space\_name](#input\_cf\_space\_name) | Name of the Cloud Foundry space created for Workzone services. | `string` | `"workzone"` | no |
| <a name="input_subaccount_id"></a> [subaccount\_id](#input\_subaccount\_id) | ID of the subaccount where Workzone will be subscribed. | `string` | n/a | yes |
| <a name="input_workzone_administrators_group"></a> [workzone\_administrators\_group](#input\_workzone\_administrators\_group) | Platform identity-provider group assigned the Launchpad\_Admin role collection. | `string` | `"wz_administrators"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cf_space_id"></a> [cf\_space\_id](#output\_cf\_space\_id) | Cloud Foundry space ID for Workzone. |
| <a name="output_task_center_service_instance_id"></a> [task\_center\_service\_instance\_id](#output\_task\_center\_service\_instance\_id) | ID of the Task Center Cloud Foundry service instance. |
| <a name="output_workzone_api_service_instance_id"></a> [workzone\_api\_service\_instance\_id](#output\_workzone\_api\_service\_instance\_id) | ID of the Workzone API Cloud Foundry service instance. |
<!-- END_TF_DOCS -->