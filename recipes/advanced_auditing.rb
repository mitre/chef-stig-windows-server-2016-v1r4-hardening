#Advanced Auditing all systems

powershell_script 'V-73447' do
  code <<-EOH
  Auditpol.exe /set /subcategory:'Group Membership' /success:Enable /Failure:Disable 
  EOH
end

powershell_script 'V-73413, V-73415' do
  code <<-EOH
   Auditpol.exe /set /subcategory:'Credential Validation' /success:Enable /Failure:Enable
  EOH
end

powershell_script 'V-73417' do
  code <<-EOH
   Auditpol.exe /set /subcategory:'Computer Account Management' /success:Enable /Failure:Enable
  EOH
end

powershell_script 'V-73419' do
  code <<-EOH
   Auditpol.exe /set /subcategory:'Other Account Management Events' /success:Enable /Failure:Disable
  EOH
end

powershell_script 'V-73423' do
  code <<-EOH
   Auditpol.exe /set /subcategory:'Security Group Management' /success:Enable /Failure:Disable
  EOH
end

powershell_script 'V-73429' do
  code <<-EOH
   Auditpol.exe /set /subcategory:'User Account Management' /success:Enable /Failure:Enable
  EOH
end

powershell_script 'V-73433' do
  code <<-EOH
   Auditpol.exe /set /subcategory:'Process Creation' /success:Enable /Failure:Enable
  EOH
end

powershell_script 'V-73449' do
  code <<-EOH
   Auditpol.exe /set /subcategory:'Logoff' /success:Enable /Failure:Enable
  EOH
end

powershell_script '73451, V-73453' do
  code <<-EOH
   Auditpol.exe /set /subcategory:'Logoff' /success:Enable /Failure:Enable
  EOH
end

powershell_script 'logn' do
  code <<-EOH
   Auditpol.exe /set /subcategory:'Logon' /success:Enable /Failure:Enable
  EOH
end

powershell_script '73455' do
  code <<-EOH
   Auditpol.exe /set /subcategory:'Special Logon' /success:Enable /Failure:Disable 
  EOH
end

powershell_script 'V-73457, V-73459' do
  code <<-EOH
    Auditpol.exe /set /subcategory:'Removable Storage' /success:Enable /Failure:Enable
  EOH
end

powershell_script 'V-73461, V-73463' do
  code <<-EOH
    Auditpol.exe /set /subcategory:'Audit Policy Change' /success:Enable /Failure:Enable 
  EOH
end

powershell_script 'V-73465' do
  code <<-EOH
    Auditpol.exe /set /subcategory:'Authentication Policy Change' /success:Enable /Failure:Disable  
  EOH
end

powershell_script 'V-73467' do
  code <<-EOH
    Auditpol.exe /set /subcategory:'Authorization Policy Change' /success:Enable /Failure:Disable   
  EOH
end

powershell_script 'V-73469, V-73471' do
  code <<-EOH
    Auditpol.exe /set /subcategory:'Sensitive Privilege Use' /success:Enable /Failure:Enable    
  EOH
end

powershell_script 'V-73473, V-73475' do
  code <<-EOH
    Auditpol.exe /set /subcategory:'IPsec Driver' /success:Enable /Failure:Enable  
  EOH
end

powershell_script 'V-73477, V-73479' do
  code <<-EOH
    Auditpol.exe /set /subcategory:'Other System Events' /success:Enable /Failure:Enable 
  EOH
end

powershell_script 'V-73481' do
  code <<-EOH
    Auditpol.exe /set /subcategory:'Security State Change' /success:Enable /Failure:Disable 
  EOH
end

powershell_script 'V-73483' do
  code <<-EOH
    Auditpol.exe /set /subcategory:'Security System Extension' /success:Enable /Failure:Disable 
  EOH
end

powershell_script 'V-73489, V-73491' do
  code <<-EOH
    Auditpol.exe /set /subcategory:'System Integrity' /success:Enable /Failure:Enable  
  EOH
end

powershell_script 'V-73431' do
  code <<-EOH
    Auditpol.exe /set /subcategory:'Plug and Play Events' /success:Enable /Failure:Disable  
  EOH
end


powershell_script 'V-73443, V-73445' do
  code <<-EOH
    Auditpol.exe /set /subcategory:'Account Lockout' /success:Enable /Failure:Enable   
  EOH
end


powershell_script 'Central Policy Staging' do
  code <<-EOH
  Auditpol.exe /set /subcategory:'Central Policy Staging' /success:Enable /Failure:Enable 
  EOH
end


