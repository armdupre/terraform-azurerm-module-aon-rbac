resource "azurerm_role_assignment" "rbac_mrg" {
	scope = local.naks_cluster_mrg_id
	role_definition_name = local.role_definition_name
	principal_id = data.azurerm_client_config.current.object_id
}

resource "time_sleep" "sleep_delay" {
	create_duration = local.sleep_delay
	depends_on = [
		azurerm_role_assignment.rbac_mrg
	]
}
