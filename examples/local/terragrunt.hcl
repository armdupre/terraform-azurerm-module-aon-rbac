include "root" {
	path = find_in_parent_folders("root.hcl")
	expose = true
}

include "provider" {
	path = find_in_parent_folders("provider.hcl")
}

terraform {
	source = "../.."
}

locals {
	role_definition_name = "Azure Operator Nexus Workload Admin v2"
}

inputs = {
	parameters = {
		naks_cluster_mrg = {
			naks_cluster_mrg_name = include.root.locals.naks_cluster_mrg_name
		}
		rbac = {
			role_definition_name = local.role_definition_name
		}
	}
}
