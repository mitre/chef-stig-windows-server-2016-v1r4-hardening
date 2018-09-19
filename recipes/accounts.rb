

#V-73263
powershell_script 'V-73263' do
  code <<-EOH
  #wmic path win32_useraccount set PasswordExpires=True
  EOH
end


#deletes users specified in the delete users array, these users should be set to the emergency, and temporary accounts to be removed
powershell_script 'V-6840' do
  code <<-EOH
  $delete_users = ("test", "t")
  foreach ($dir in $myarray) {
    net user $dir /delete
  }
  EOH
end