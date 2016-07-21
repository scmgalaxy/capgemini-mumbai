#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
service 'apache2' do
	supports:status =>true
	action [:stop :disable]
end
