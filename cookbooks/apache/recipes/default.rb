#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apaches2"
end
 
package 'Apache' do
package_name package
action [:install]
end

service 'Apache' do
service_name package
action [:enable, :start]
end

