hostname = node['hostname']
file '/ec/motd' do
content "Hostname is: #{hostname}"
end
