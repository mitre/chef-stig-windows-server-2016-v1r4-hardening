#Advanced Auditing - Domain Controllers
powershell_script 'V-1113, V-1114' do
  code <<-EOH
  Auditpol.exe /set /subcategory:'Directory Service Access' /success:Enable /Failure:Enable
  EOH
end