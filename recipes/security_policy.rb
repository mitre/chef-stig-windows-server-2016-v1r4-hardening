#creates security policy template
cookbook_file'C:\Windows\security\database\windows_hardening.inf' do
  source 'windows_hardening.inf'
  action :create
end

#V-62249
execute 'import new security policy' do
  cwd 'C:\Windows\security\database'
  command "secedit /Import /db test1.sdb /cfg windows_hardening.inf /overwrite /quiet"
end

execute 'deploy template' do
  cwd 'C:\Windows\security\database'
  command <<-EOH
      secedit /configure /db test1.sdb
    EOH

end


