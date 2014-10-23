#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
mysql_home= node['mysql']['config_dir']
mysql_client="#{node['mysql']['config_dir']}/#{File.basename(node['mysql']['client'])}"
mysql_server="#{node['mysql']['config_dir']}/#{File.basename(node['mysql']['server'])}"
mysql_devel="#{node['mysql']['config_dir']}/#{File.basename(node['mysql']['devel'])}"

remote_file mysql_client do
 source node['mysql']['client']
 mode 0755
end

remote_file mysql_server do
 source node['mysql']['server']
 mode 0755
end

remote_file mysql_devel do
 source node['mysql']['devel']
 mode 0755
end

directory mysql_home do
       action :delete
       recursive true
       not_if do ::File.directory?(mysql_home) end
end

bash "mysql-install" do
 code <<-EOH
  rpm -ivh --replacefiles #{mysql_client}
  rpm -ivh --replacefiles #{mysql_server}
  rpm -ivh --replacefiles #{mysql_devel}
  EOH
 cwd mysql_home
 user "root"
 group "root"
end
