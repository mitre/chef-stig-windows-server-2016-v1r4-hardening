#V-73287
powershell_script 'V-73287' do
  code <<-EOH
  Uninstall-WindowsFeature -Name Fax
  EOH
end

#V-73289 
powershell_script 'V-73289' do
  code <<-EOH
  Uninstall-WindowsFeature -Name Web-Ftp-Service
  EOH
end

#V-73291
powershell_script 'V-73291' do
  code <<-EOH
  Uninstall-WindowsFeature -Name PNRP
  EOH
end

#V-73293
powershell_script 'V-73293' do
  code <<-EOH
  Uninstall-WindowsFeature -Name Simple-TCPIP
  EOH
end

#V-73295
powershell_script 'V-73295' do
  code <<-EOH
  Uninstall-WindowsFeature -Name Telnet-Client
  EOH
end

#V-73297
powershell_script 'V-73297' do
  code <<-EOH
  Uninstall-WindowsFeature -Name TFTP-Client
  EOH
end

#V-73299
powershell_script 'V-73299' do
  code <<-EOH
  Uninstall-WindowsFeature -Name FS-SMB1
  EOH
end

#V-73301
powershell_script 'V-73301' do
  code <<-EOH
  Uninstall-WindowsFeature -Name PowerShell-v2 
  EOH
end
