

#Advanced Auditing - Domain Controllers
powershell_script 'V-1113, V-1114' do
  code <<-EOH
  Auditpol /clear
  Auditpol /set /subcategory:'Directory Service Access' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Directory Service Changes' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Group Membership' /success:Enable /Failure:Disable
  Auditpol /set /subcategory:'Credential Validation' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Computer Account Management' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Other Account Management Events' /success:Enable /Failure:Disable
  Auditpol /set /subcategory:'Security Group Management' /success:Enable /Failure:Disable
  Auditpol /set /subcategory:'User Account Management' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Process Creation' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Logoff' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Logon' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Special Logon' /success:Enable /Failure:Disable
  Auditpol /set /subcategory:'Audit Policy Change' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Authentication Policy Change' /success:Enable /Failure:Disable
  Auditpol /set /subcategory:'Sensitive Privilege Use' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'IPsec Driver' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Security State Change' /success:Enable /Failure:Disable
  Auditpol /set /subcategory:'Security System Extension' /success:Enable /Failure:Disable
  Auditpol /set /subcategory:'System Integrity' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Removable Storage' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Authorization Policy Change' /success:Enable /Failure:Disable
  Auditpol /set /subcategory:'Account Lockout' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Other System Events' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Central Policy Staging' /success:Enable /Failure:Enable
  Auditpol /set /subcategory:'Plug and Play Events' /success:Enable /Failure:Disable
  EOH
end