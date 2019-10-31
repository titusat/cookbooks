#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

#A
#include_recipe 'install'
package 'nginx'

service 'nginx' do
 action [ :enable, :start ]
end

file '/home/dev1/helloJ' do
 action :create
 group 'root'
 user 'root'
 mode '777'
 content "Hello Lord"
 #not_if { ::File.exist?('home/dev1/helloJ')}
end
