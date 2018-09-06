#V-73809, V-73635
powershell_script 'V73809, V-73635' do
  code <<-EOH
  #rename the guest account
  wmic useraccount where "Name='Guest'" rename Gst

  #disable the guest account
  net user Gst /active:no

  EOH
end

#V-73623
powershell_script 'V-73623' do
  code <<-EOH
  #rename the admin account
  wmic useraccount where "Name='Administrator'" rename Admn

  EOH
end

#V-73263
powershell_script 'V-73263' do
  code <<-EOH
  wmic path win32_useraccount set PasswordExpires=True
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