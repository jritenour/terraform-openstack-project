provider "openstack" {
  user_name = "${data.vault_generic_secret.openstack_credentials.data["user_name"]}"
  tenant_name       = "${data.vault_generic_secret.openstack_credentials.data["tenant_name"]}"
  password     = "${data.vault_generic_secret.openstack_credentials.data["password"]}"
  auth_url   = "${data.vault_generic_secret.openstack_credentials.data["auth_url"]}"
  region   = "${data.vault_generic_secret.openstack_credentials.data["region"]}"
}

resource "openstack_identity_project_v3" "project" {
  name = "${var.project_name}"
  description = "A project"
}
