locals {
	naks_cluster_mrg = var.parameters.naks_cluster_mrg
	naks_cluster_mrg_id = format("/subscriptions/%s/resourceGroups/%s", local.subscription_id, local.naks_cluster_mrg_name)
	naks_cluster_mrg_name = local.naks_cluster_mrg.naks_cluster_mrg_name
	rbac = var.parameters.rbac
	role_definition_name = local.rbac.role_definition_name
	sleep_delay = "1m"
	subscription_id = data.azurerm_client_config.current.subscription_id
}
