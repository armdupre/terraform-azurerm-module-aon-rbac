variable parameters {
	type = object({
		naks_cluster_mrg = object({
			naks_cluster_mrg_name = string
		})
		rbac = object({
			role_definition_name = string
		})
	})
}
