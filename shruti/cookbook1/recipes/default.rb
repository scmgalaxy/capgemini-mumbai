#
# Cookbook Name:: cookbook1
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

service 'apache2' do
	action [:disable :stop]
end
