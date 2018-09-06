#
# Cookbook:: windows_hardening
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


include_recipe 'windows_hardening::services_and_features'
include_recipe 'windows_hardening::security_policy'
include_recipe 'windows_hardening::acl_permissions'
include_recipe 'windows_hardening::advanced_auditing'
include_recipe 'windows_hardening::registry_keys'
include_recipe 'windows_hardening::accounts'









