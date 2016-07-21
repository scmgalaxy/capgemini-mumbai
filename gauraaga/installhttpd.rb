script 'updateyum' do
  interpreter "bash"
  code <<-EOH
	mkdir -p /etc/apache
	cd /etc/apache
	wget http://mirror.fibergrid.in/apache//httpd/binaries/netware/httpd_2.4.10-netware-bin.zip
	unzip httpd_2.4.10-netware-bin.zip
  EOH
end
yum_package 'httpd' do
	action :upgrade
end

