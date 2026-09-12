# tf_module_workzone
Subscribe to SAP Build Workzone Standard Edition and SAP Task Center

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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_btp_platform_idp"></a> [btp\_platform\_idp](#input\_btp\_platform\_idp) | FQDN of the Platform Identity Provider. | `string` | n/a | yes |
| <a name="input_cf_administrator"></a> [cf\_administrator](#input\_cf\_administrator) | Name of the user to be added to the Cloud Foundry space. | `string` | n/a | yes |
| <a name="input_cf_org_id"></a> [cf\_org\_id](#input\_cf\_org\_id) | ID of the Cloud Foundry organization. | `string` | n/a | yes |
| <a name="input_subaccount_id"></a> [subaccount\_id](#input\_subaccount\_id) | ID of the subaccount to be trusted. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cf_space_id"></a> [cf\_space\_id](#output\_cf\_space\_id) | Cloud Foundry Space ID for Workzone |
<!-- END_TF_DOCS -->