#
# Cookbook:: windows_hardening
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


#include_recipe 'windows_hardening::services_and_features'
#include_recipe 'windows_hardening::security_policy'
#include_recipe 'windows_hardening::acl_permissions'
#include_recipe 'windows_hardening::advanced_auditing'
#include_recipe 'windows_hardening::registry_keys'
#include_recipe 'windows_hardening::accounts'



require "chef/mixin/powershell_out"
::Chef::Recipe.send(:include, Chef::Mixin::PowershellOut)

powershell_script = <<-EOH
     	wmic computersystem get domainrole | Findstr /v DomainRole
    EOH

result = powershell_out(powershell_script)

if result.stdout.strip == '4' || result.stdout.strip == '5'
	include_recipe 'chef_windows_server_2016_v1r4_stig_hardening::security_policy'
end


