#
# Cookbook Name:: myfirstcookbook
# Recipe:: default
#
#Copyrighnt (c) 2016 The Authors, All Rights Reserved.
=begin
file 'test.txt' do
	action :delete
end

file 'test1.txt' do
	content "This is my first chef program"
end

file 'test1.txt' do
	owner 'trainee'
end

file 'test1.txt' do
	group 'audio'
end




directory '/root/dir2' do
end

directory '/etc/dir1' do
end 

directory 'dir3' do
	owner 'trainee'
end



script 'extract_module' do
	interpreter "bash"
	code <<-EOH
	unzip httpd_2.4.10-netware-bin.zip -d /etc
	yum update
EOH
end
=end

template 'vat/www/html/index.html' do
	source 'index.html.erb'
end

service 'iptables' do
	action:stop
end


