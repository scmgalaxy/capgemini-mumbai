#
# Cookbook Name:: demoCookBook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

service "httpd" do
	action [ :stop, :disable ]
end

file '/index.html' do
  content '<html>This is a placeholder for the home page.</html>'
  mode '0755'
  owner 'trainee'
  group 'trainee'
end
