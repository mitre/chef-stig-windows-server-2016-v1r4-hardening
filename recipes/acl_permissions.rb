#V-73405, #V-73407, V-73409
powershell_script 'V-73405, 73407, 73409' do
 
  code <<-EOH
  $systemroot = $Env:SYSTEMROOT
  $FolderPath = "$systemroot\\SYSTEM32\\WINEVT\\LOGS"
 
  $ACL = (Get-Item $FolderPath).GetAccessControl('Access')

  $NonCompliantRules = $ACL.Access | Where-Object {
  $_.IdentityReference -notlike "*Administrators*" -and $_.IdentityReference -notlike "*Eventlog*"
  }

  #For every Principal found that's not supposed to be there, remove the ACE
  If([string]::IsNullOrEmpty($NonCompliantRules)){}

  Else{
    ForEach($NonCompliantRule in $NonCompliantRules){

  $ACl.RemoveAccessRule($NonCompliantRule) | out-null
  }}

  $AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("SYSTEM","FullControl","Allow")
  $acl.SetAccessRule($AccessRule)


  $AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("Authenticated Users","Read, Synchronize","Allow")
  $acl.SetAccessRule($AccessRule)

  $acl | Set-Acl -Path "$systemroot\\SYSTEM32\\WINEVT\\LOGS"

  EOH
end


#V-73251
powershell_script 'V-73251 - part 1' do
  code <<-EOH

  $acl = Get-Acl "C:\\Program Files"

  $NonCompliantRules = $ACL.Access | Where-Object {
  $_.IdentityReference -notlike "*Administrators*" -and $_.IdentityReference -notlike "*Creator Owner*" -and $_.IdentityReference -notlike "*SYSTEM*" -and $_.IdentityReference -notlike "*Users*" -and $_.IdentityReference -notlike "*TrustedInstaller*" -and $_.IdentityReference -notlike "*APPLICATION PACKAGE AUTHORITY*"
  }

  #For every Principal found that's not supposed to be there, remove the ACE
  If([string]::IsNullOrEmpty($NonCompliantRules)){}

  Else{
    ForEach($NonCompliantRule in $NonCompliantRules){

  $ACl.RemoveAccessRule($NonCompliantRule) | out-null
  }}

  $acl = Get-Acl "C:\\Program Files (x86)"

  $NonCompliantRules = $ACL.Access | Where-Object {
  $_.IdentityReference -notlike "*Administrators*" -and $_.IdentityReference -notlike "*Creator Owner*" -and $_.IdentityReference -notlike "*SYSTEM*" -and $_.IdentityReference -notlike "*Users*" -and $_.IdentityReference -notlike "*TrustedInstaller*" -and $_.IdentityReference -notlike "*APPLICATION PACKAGE AUTHORITY*"
  }

  #For every Principal found that's not supposed to be there, remove the ACE
  If([string]::IsNullOrEmpty($NonCompliantRules)){}

  Else{
    ForEach($NonCompliantRule in $NonCompliantRules){

  $ACl.RemoveAccessRule($NonCompliantRule) | out-null
  }}

  EOH
end

#V-73249
powershell_script 'V-73249' do
  code <<-EOH

  $FolderPath = "C:\\"
 
  $ACL = (Get-Item $FolderPath).GetAccessControl('Access')
   $acl.SetAccessRuleProtection($true,$false)

  $NonCompliantRules = $ACL.Access | Where-Object {
  $_.IdentityReference -notlike "*Administrators*"
  }

  #For every Principal found that's not supposed to be there, remove the ACE
  If([string]::IsNullOrEmpty($NonCompliantRules)){}

  Else{
    ForEach($NonCompliantRule in $NonCompliantRules){

  $ACl.RemoveAccessRule($NonCompliantRule) | out-null
  }}

  $AccessRule = New-Object  system.security.accesscontrol.FileSystemAccessRule("CREATOR OWNER","FullControl","ContainerInherit, ObjectInherit","InheritOnly","Allow")
  $acl.SetAccessRule($AccessRule)

  $AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("SYSTEM","FullControl","Allow")
  $acl.SetAccessRule($AccessRule)

  $AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("Users","AppendData","Allow")
  $acl.AddAccessRule($AccessRule)


  $AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("Users","CreateFiles","Allow")
  $acl.AddAccessRule($AccessRule)

  $AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("Users","ReadAndExecute","Allow")
  $acl.AddAccessRule($AccessRule)

   $acl | Set-Acl -Path "C:\\"

  EOH
end

#V-73253
powershell_script 'V-73253' do
  code <<-EOH

  $FolderPath = "C:\\Windows"
 
  $ACL = (Get-Item $FolderPath).GetAccessControl('Access')
   $acl.SetAccessRuleProtection($true,$false)

    $NonCompliantRules = $ACL.Access | Where-Object {
  $_.IdentityReference -notlike "*Administrators*" -and $_.IdentityReference -notlike "*Creator Owner*" -and $_.IdentityReference -notlike "*SYSTEM*" -and $_.IdentityReference -notlike "*Users*" -and $_.IdentityReference -notlike "*TrustedInstaller*" -and $_.IdentityReference -notlike "*APPLICATION PACKAGE AUTHORITY*"
  }

  #For every Principal found that's not supposed to be there, remove the ACE
  If([string]::IsNullOrEmpty($NonCompliantRules)){}

  Else{
    ForEach($NonCompliantRule in $NonCompliantRules){

  $ACl.RemoveAccessRule($NonCompliantRule) | out-null
  }}

  EOH
end

#V-73411
powershell_script 'V-73411' do
  code <<-EOH

  $systemroot = $Env:SYSTEMROOT
  $FolderPath = "$systemroot\\SYSTEM32\\Eventvwr.exe"

 
  $ACL = (Get-Item $FolderPath).GetAccessControl('Access')
   $acl.SetAccessRuleProtection($true,$false)

    $NonCompliantRules = $ACL.Access | Where-Object {
  $_.IdentityReference -notlike "*Administrators*" -and $_.IdentityReference -notlike "*Creator Owner*" -and $_.IdentityReference -notlike "*SYSTEM*" -and $_.IdentityReference -notlike "*Users*" -and $_.IdentityReference -notlike "*TrustedInstaller*" -and $_.IdentityReference -notlike "*APPLICATION PACKAGE AUTHORITY*"
  }

  #For every Principal found that's not supposed to be there, remove the ACE
  If([string]::IsNullOrEmpty($NonCompliantRules)){}

  Else{
    ForEach($NonCompliantRule in $NonCompliantRules){

  $ACl.RemoveAccessRule($NonCompliantRule) | out-null
  }}

  EOH
end




