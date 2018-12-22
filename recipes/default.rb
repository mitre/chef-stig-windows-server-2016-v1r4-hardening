#
# Cookbook:: windows_hardening
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


require "chef/mixin/powershell_out"
::Chef::Recipe.send(:include, Chef::Mixin::PowershellOut)

powershell_script = <<-EOH
     	wmic computersystem get domainrole | Findstr /v DomainRole
    EOH

include_recipe 'chef_windows_server_2016_v1r4_stig_hardening::services_and_features'

result = powershell_out(powershell_script)

if result.stdout.strip == '4' || result.stdout.strip == '5'
	include_recipe 'chef_windows_server_2016_v1r4_stig_hardening::security_policydc'
	include_recipe 'chef_windows_server_2016_v1r4_stig_hardening::advanced_auditingdc'

end	

if result.stdout.strip != '4' && result.stdout.strip != '5'
	include_recipe 'chef_windows_server_2016_v1r4_stig_hardening::security_policy'
	include_recipe 'chef_windows_server_2016_v1r4_stig_hardening::advanced_auditing'
	include_recipe 'chef_windows_server_2016_v1r4_stig_hardening::accounts'
end


include_recipe 'chef_windows_server_2016_v1r4_stig_hardening::acl'
include_recipe 'chef_windows_server_2016_v1r4_stig_hardening::registry_keys'
