#
# Cookbook Name:: web_app
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
file "index.html" do
	content "<!doctype html><html><body>Hello World!!</body></html>"
end
