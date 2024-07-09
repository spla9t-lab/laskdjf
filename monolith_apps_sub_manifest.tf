resource "zentral_monolith_sub_manifest" "apps" {
  name        = "Mandatory apps"
  description = "The mandatory apps for our standard macOS client"
}

resource "zentral_monolith_sub_manifest_pkg_info" "onepassword" {
  sub_manifest_id = zentral_monolith_sub_manifest.apps.id
  key             = "managed_installs"
  pkg_info_name   = "1Password"
}
