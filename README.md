# tf_module_workzone
Subscribe to SAP Build Work Zone Standard Edition and SAP Task Center.

## Prerequisites

- A SAP BTP subaccount with Cloud Foundry enabled.
- A Cloud Foundry organization ID from `tf_module_enable_cf`.
- SAP BTP and Cloud Foundry provider credentials with permissions to create subscriptions, service instances, service keys, spaces, and space roles.
- A platform identity-provider group for Workzone administrators.

Apply this module after the Cloud Foundry environment is available. The module creates a Cloud Foundry space, subscribes the subaccount to Workzone, and provisions Workzone API and Task Center service instances. Terraform state may contain service-key credentials; protect it accordingly.

<!-- BEGIN_TF_DOCS -->
[36mrequirement.terraform[0m (>= 1.14.0)
[36mrequirement.btp[0m (>= 1.22)
[36mrequirement.cloudfoundry[0m (>= 1.15)


[36mprovider.btp[0m (1.26.0)
[36mprovider.cloudfoundry[0m (1.18.0)


[36mresource.btp_subaccount_entitlement.task_center_entitlement (resource)[0m (https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_entitlement)
[36mresource.btp_subaccount_entitlement.workzone_api_entitlement (resource)[0m (https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_entitlement)
[36mresource.btp_subaccount_entitlement.workzone_entitlement (resource)[0m (https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_entitlement)
[36mresource.btp_subaccount_role_collection_assignment.wz_administrators (resource)[0m (https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection_assignment)
[36mresource.btp_subaccount_subscription.workzone (resource)[0m (https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_subscription)
[36mresource.cloudfoundry_service_credential_binding.task_center_service_key (resource)[0m (https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/service_credential_binding)
[36mresource.cloudfoundry_service_credential_binding.workzone_api_service_key (resource)[0m (https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/service_credential_binding)
[36mresource.cloudfoundry_service_instance.task_center (resource)[0m (https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/service_instance)
[36mresource.cloudfoundry_service_instance.workzone_api (resource)[0m (https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/service_instance)
[36mresource.cloudfoundry_space.wz_space (resource)[0m (https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/space)
[36mresource.cloudfoundry_space_role.space_developer (resource)[0m (https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/space_role)
[36mresource.cloudfoundry_space_role.space_manager (resource)[0m (https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest/docs/resources/space_role)


[36minput.btp_platform_idp[0m (required)
[90mFQDN of the Platform Identity Provider.[0m

[36minput.cf_administrator[0m (required)
[90mEmail address of the user to be added to the Cloud Foundry space.[0m

[36minput.cf_org_id[0m (required)
[90mID of the Cloud Foundry organization.[0m

[36minput.cf_space_name[0m ("workzone")
[90mName of the Cloud Foundry space created for Workzone services.[0m

[36minput.subaccount_id[0m (required)
[90mID of the subaccount where Workzone will be subscribed.[0m

[36minput.workzone_administrators_group[0m ("wz_administrators")
[90mPlatform identity-provider group assigned the Launchpad_Admin role collection.[0m


[36moutput.cf_space_id[0m
[90mCloud Foundry space ID for Workzone.[0m

[36moutput.task_center_service_instance_id[0m
[90mID of the Task Center Cloud Foundry service instance.[0m

[36moutput.workzone_api_service_instance_id[0m
[90mID of the Workzone API Cloud Foundry service instance.[0m
<!-- END_TF_DOCS -->