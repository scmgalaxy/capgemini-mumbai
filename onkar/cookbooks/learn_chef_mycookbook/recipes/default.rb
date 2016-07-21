#
# Cookbook Name:: learn_chef_mycookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'httpd' 

service 'httpd' do
action [ :start, :enable]
end

template'/var/www/html/index.html' do
source 'index.html.erb'
end

service 'iptables' do
action :stop
end

file 'index.html' do
  content '<html>This is a placeholder for the home page.</html>'
  mode '0755'
  owner 'trainee'
  group 'trainee'
end


