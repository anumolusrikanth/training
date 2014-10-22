#
# Cookbook Name:: tomcat
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
tomcat_home= node['tomcat']['config_dir']
tomcat_binary="#{node['tomcat']['config_dir']}/#{File.basename(node['tomcat']['url'])}"


remote_file tomcat_binary do
  source node['tomcat']['url']
 mode 0755
end

bash "tomcat7-install" do
 code "tar xvzf #{tomcat_binary}"
 cwd tomcat_home
 user "root"
 group "root" 
end


template "/opt/apache-tomcat-7.0.39/conf/tomcat-users.xml" do
 source 'tomcat-users.xml.erb'
 owner 'root'
 mode '0644'
end
