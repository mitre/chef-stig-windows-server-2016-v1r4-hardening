#V-26529, V-26530


powershell_script 'V-1113, V-1114' do
  code <<-EOH
  Auditpol.exe /set /subcategory:'Credential Validation' /success:Enable /Failure:Enable
  Auditpol.exe /set /subcategory:'Other Account Management Events' /success:Enable /Failure:Disable
  Auditpol.exe /set /subcategory:'Security Group Management' /success:Enable /Failure:Disable
  Auditpol.exe /set /subcategory:'User Account Management' /success:Enable /Failure:Enable
  Auditpol.exe /set /subcategory:'Process Creation' /success:Enable /Failure:Enable
  Auditpol.exe /set /subcategory:'Logoff' /success:Enable /Failure:Enable /Failure:Disable
  Auditpol.exe /set /subcategory:'Logon' /success:Enable /Failure:Enable /Failure:Disable
  Auditpol.exe /set /subcategory:'Special Logon' /success:Enable /Failure:Disable
  Auditpol.exe /set /subcategory:'Audit Policy Change' /success:Enable /Failure:Enable
  Auditpol.exe /set /subcategory:'Authentication Policy Change' /success:Enable /Failure:Disable
  Auditpol.exe /set /subcategory:'Sensitive Privilege Use' /success:Enable /Failure:Enable
  Auditpol.exe /set /subcategory:'IPsec Driver' /success:Enable /Failure:Enable
  Auditpol.exe /set /subcategory:'Security State Change' /success:Enable /Failure:Disable
  Auditpol.exe /set /subcategory:'Security System Extension' /success:Enable /Failure:Disable
  Auditpol.exe /set /subcategory:'System Integrity' /success:Enable /Failure:Enable
  Auditpol.exe /set /subcategory:'Removable Storage' /success:Enable /Failure:Enable
  Auditpol.exe /set /subcategory:'Authorization Policy Change' /success:Enable /Failure:Disable
  Auditpol.exe /set /subcategory:'Account Lockout' /success:Enable /Failure:Enable
  Auditpol.exe /set /subcategory:'Other System Events' /success:Enable /Failure:Enable
  Auditpol.exe /set /subcategory:'Central Policy Staging' /success:Enable /Failure:Enable
  EOH
end