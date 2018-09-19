


	#creates security policy template
	cookbook_file'C:\Windows\security\database\windows_dc.inf' do
	  source 'windows_dc.inf'
	  action :create
	end

	#V-62249
	execute 'import new security policy' do
	  cwd 'C:\Windows\security\database'
	  command "secedit /Import /db test1.sdb /cfg windows_dc.inf /overwrite /quiet"
	end

	execute 'deploy template' do
	  cwd 'C:\Windows\security\database'
	  command <<-EOH
	      secedit /configure /db test1.sdb
	    EOH

	end
