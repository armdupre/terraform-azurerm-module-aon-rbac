locals {
	app_tag = "cyperf"
	app_version = "26.1.0"
	app_version_tag = replace(local.app_version, ".", "-")
	naks_cluster_mrg_name = format("%s-naks-HostedResources-0000000", local.preamble_version)
	preamble = format("%s-%s-%s", local.user_login_tag, local.user_project_tag, local.app_tag)
	preamble_version = format("%s-%s", local.preamble, local.app_version_tag)
	subscription_id = "00000000-0000-0000-0000-000000000000"
	user_login_tag = "jadupre"
	user_project_tag = "aon"
}
