#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#package "httpd"

service 'apache2' do
	supports:status =>true
	action [:stop :disable]
end

template "/var/www/html/index.html" do
	source "index.html.rbtemplate '/var/www/html/index.html' do
    source 'index.html.erb'
end

service 'iptables' do
    action.stop
end

