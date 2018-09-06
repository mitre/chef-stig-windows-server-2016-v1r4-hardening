#V-26600
windows_service 'Fax' do
  action :disable
  only_if { ::Win32::Service.exists?("Fax") }
end

#V-26002 

windows_service 'Web-Ftp-Server ' do
  action :disable
  only_if { ::Win32::Service.exists?("Web-Ftp-Server ") }
end

#V-26004 
windows_service 'p2pimsvc' do
  action :disable
  only_if { ::Win32::Service.exists?("p2pimsvc") }
end

#V-26606
windows_service 'tlntsvr ' do
  action :disable
  only_if { ::Win32::Service.exists?("tlntsvr ") }
end

#40206
powershell_script 'V-40206' do
  code <<-EOH
  Set-Service -Name SCPolicySvc -StartupType Automatic
  EOH
end

#V-26600
windows_service 'simptcp ' do
  action :disable
  only_if { ::Win32::Service.exists?("simptcp ") }
end


#V-73805 
powershell_script 'V-1113, V-1114' do
  code <<-EOH
 Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol -norestart
  EOH
end

