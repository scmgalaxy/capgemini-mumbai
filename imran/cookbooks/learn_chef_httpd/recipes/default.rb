#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
service 'httpd' do 
	action [:stop, :disable]
end
