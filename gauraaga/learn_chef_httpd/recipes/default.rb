file 'test.txt'

file 'test1.txt' do
	owner 'trainee'
	group 'users'
end

file 'test1.txt' do
	content "This is my first chef program"
end

directory '/etc/dir1'
directory '/root/dir2'
directory 'dir3' do
  owner 'trainee'
  action :create
end

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

service "httpd" do
	action [ :stop, :disable ]
end

