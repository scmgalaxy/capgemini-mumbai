#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
ifconfig onboot do

	service 'apache2' do
		supports :restart => true, :reload => true
  		action :enable		
	end

end	

