
 #Domain Controllers only

powershell_script 'V-73399' do
  code <<-EOH

  Import-Module ActiveDirectory
  $get_distinguishedname = Get-ADDomain | Findstr DistinguishedName
  $distinguishedName = $get_distinguishedname.substring(37)

  $get_ou = Get-ADOrganizationalUnit -LDAPFilter '(name=*)' | Findstr DistinguishedName | Findstr Controllers
  $ou = $get_ou.substring(27)

  $get_ids = Get-gpo -all | Findstr Id
  $ids = $get_ids.substring(19)

  #V-73389, V-73391
  dsacls "$distinguishedName" /ResetDefaultDACL
  dsacls "$distinguishedName" /ResetDefaultsACL

  #V-73393
  dsacls "CN=Infrastructure,$distinguishedName" /ResetDefaultDACL
  dsacls "CN=Infrastructure,$distinguishedName" /ResetDefaultsACL

  #V-73395, V-73375, V-73377
  dsacls "$ou" /ResetDefaultDACL
  dsacls "$ou" /ResetDefaultsACL

  #V-73397
  dsacls "CN=AdminSDHolder,CN=System,$distinguishedName" /ResetDefaultDACL
  dsacls "CN=AdminSDHolder,CN=System,$distinguishedName" /ResetDefaultsACL

  #V-73399
  dsacls "CN=RID Manager$,CN=System,$distinguishedName" /ResetDefaultDACL
  dsacls "CN=RID Manager$,CN=System,$distinguishedName" /ResetDefaultsACL

  #V-73373
  foreach ($id in $ids) {
    dsacls "CN={$id},CN=Policies,CN=System,$distinguishedName" /ResetDefaultDACL
    dsacls "CN={$id},CN=Policies,CN=System,$distinguishedName" /ResetDefaultsACL
  }
  


  EOH
end

#V-73369
powershell_script 'V-73369' do
  code <<-EOH

  $acl = Get-Acl "HKLM:\\SYSTEM\\CurrentControlSet\\Services\\NTDS\\Parameters"

  $NonCompliantRules = $ACL.Access | Where-Object {
  $_.IdentityReference -notlike "*Administrators*" -and $_.IdentityReference -notlike "*Server Operators*" -and $_.IdentityReference -notlike "*Creator Owner*"
  }

  #For every Principal found that's not supposed to be there, remove the ACE
  If([string]::IsNullOrEmpty($NonCompliantRules)){}

  Else{
    ForEach($NonCompliantRule in $NonCompliantRules){

  $ACl.RemoveAccessRule($NonCompliantRule) | out-null
  }}


  $AccessRule = New-Object System.Security.AccessControl.registryaccessrule("SYSTEM","FullControl","Allow")
  $acl.SetAccessRule($AccessRule)

  $acl | Set-Acl -Path "HKLM:\\SYSTEM\\CurrentControlSet\\Services\\NTDS\\Parameters"

  EOH
end

#V-73371
powershell_script 'V-73371' do
  code <<-EOH

  $acl = Get-Acl "C:\\Windows\\SYSVOL\\sysvol"

  $NonCompliantRules = $ACL.Access | Where-Object {
  $_.IdentityReference -notlike "*Administrators*" -and $_.IdentityReference -notlike "*Server Operators*" -and $_.IdentityReference -notlike "*Creator Owner*"
  }

  #For every Principal found that's not supposed to be there, remove the ACE
  If([string]::IsNullOrEmpty($NonCompliantRules)){}

  Else{
    ForEach($NonCompliantRule in $NonCompliantRules){

  $ACl.RemoveAccessRule($NonCompliantRule) | out-null
  }}


  $AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("SYSTEM","FullControl","Allow")
  $acl.SetAccessRule($AccessRule)

  $AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("Authenticated Users","ReadAndExecute, Synchronize","Allow")
  $acl.SetAccessRule($AccessRule)

  $acl | Set-Acl -Path "C:\\Windows\\SYSVOL\\sysvol"

  EOH
end

#V-73255
powershell_script 'V-73255 - part 1' do
  code <<-EOH

  $acl = Get-Acl "HKLM:\\SOFTWARE"

  $NonCompliantRules = $ACL.Access | Where-Object {
  $_.IdentityReference -notlike "*Administrators*" -and $_.IdentityReference -notlike "*APPLICATION PACKAGE AUTHORITY*" -and $_.IdentityReference -notlike "*Creator Owner*"
  }

  #For every Principal found that's not supposed to be there, remove the ACE
  If([string]::IsNullOrEmpty($NonCompliantRules)){}

  Else{
    ForEach($NonCompliantRule in $NonCompliantRules){

  $ACl.RemoveAccessRule($NonCompliantRule) | out-null
  }}


  $AccessRule = New-Object System.Security.AccessControl.registryaccessrule("SYSTEM","FullControl","Allow")
  $acl.SetAccessRule($AccessRule)


  $AccessRule = New-Object System.Security.AccessControl.registryaccessrule("Users","ReadKey","Allow")
  $acl.AddAccessRule($AccessRule)


  $acl | Set-Acl -Path "HKLM:\\SOFTWARE"

  EOH
end

#V-73255 part 2
powershell_script 'V-73255 - part 2' do
  code <<-EOH

  $acl = Get-Acl "HKLM:\\SYSTEM"

  $NonCompliantRules = $ACL.Access | Where-Object {
  $_.IdentityReference -notlike "*Administrators*" -and $_.IdentityReference -notlike "*APPLICATION PACKAGE AUTHORITY*" -and $_.IdentityReference -notlike "*Creator Owner*"
  }

  #For every Principal found that's not supposed to be there, remove the ACE
  If([string]::IsNullOrEmpty($NonCompliantRules)){}

  Else{
    ForEach($NonCompliantRule in $NonCompliantRules){

  $ACl.RemoveAccessRule($NonCompliantRule) | out-null
  }}

  $AccessRule = New-Object System.Security.AccessControl.registryaccessrule("Authenticated Users","ReadKey","Allow")
  $acl.AddAccessRule($AccessRule)

  $AccessRule = New-Object System.Security.AccessControl.registryaccessrule("SYSTEM","FullControl","Allow")
  $acl.SetAccessRule($AccessRule)


  $AccessRule = New-Object System.Security.AccessControl.registryaccessrule("Server Operators","ReadKey","Allow")
  $acl.AddAccessRule($AccessRule)


  $acl | Set-Acl -Path "HKLM:\\SYSTEM"

  EOH
end


