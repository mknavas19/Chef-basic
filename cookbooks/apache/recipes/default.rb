#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'Apache' do
package_name 'httpd'
action [:install]
end

service 'Apache' do
service_name 'httpd'
action [:enable, :start]
end
