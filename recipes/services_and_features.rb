#V-73287
powershell_script 'V-73287' do
  code <<-EOH
  Uninstall-WindowsFeature -Name Fax 
  EOH
  only_if { ::Win32::Service.exists?("Fax") }
end

#V-73289 
powershell_script 'V-73289' do
  code <<-EOH
  Uninstall-WindowsFeature -Name Web-Ftp-Service
  EOH
  only_if { ::Win32::Service.exists?("Web-Ftp-Service") }
end

#V-73291
powershell_script 'V-73291' do
  code <<-EOH
  Uninstall-WindowsFeature -Name PNRP
  EOH
  only_if { ::Win32::Service.exists?("PNRP") }
end

#V-73293
powershell_script 'V-73293' do
  code <<-EOH
  Uninstall-WindowsFeature -Name Simple-TCPIP
  EOH
  only_if { ::Win32::Service.exists?("Simple-TCPIP") }
end

#V-73295
powershell_script 'V-73295' do
  code <<-EOH
  Uninstall-WindowsFeature -Name Telnet-Client
  EOH
  only_if { ::Win32::Service.exists?("Telnet-Client") }
end

#V-73297
powershell_script 'V-73297' do
  code <<-EOH
  Uninstall-WindowsFeature -Name TFTP-Client
  EOH
  only_if { ::Win32::Service.exists?("TFTP-Client") }
end



#V-73301
powershell_script 'V-73301' do
  code <<-EOH
  Uninstall-WindowsFeature -Name PowerShell-v2 
  EOH
  only_if { ::Win32::Service.exists?("PowerShell-v2") }
end

#V-73299
powershell_script 'V-73299' do
  code <<-EOH
  Uninstall-WindowsFeature -Name FS-SMB1
  EOH
  only_if { ::Win32::Service.exists?("FS-SMB1") }
end
