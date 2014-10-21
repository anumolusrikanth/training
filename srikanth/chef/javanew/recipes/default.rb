#
# Cookbook Name:: javanew
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

jdk_home=node[:java][:jdk_home]
java_home=node[:java][:old_jdk_home]
java_binary = "#{node[:java][:temp_dir]}/#{File.basename(node[:java][:source])}"

remote_file java_binary do
       source node[:java][:source]
       mode 0755
end

directory jdk_home do
       action :delete
       recursive true
       not_if do ::File.directory?(jdk_home) end
end

bash "install-java" do

       code "yes | #{java_binary}"
       cwd jdk_home
       user "root"
       group "root"
       
end
