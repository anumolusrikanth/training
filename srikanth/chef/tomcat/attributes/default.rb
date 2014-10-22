default['tomcat']['base_version'] = "7"
default['tomcat']['port'] = "8080"
default['tomcat']['user'] = "tomcat"
default['tomcat']['url']="https://s3-us-west-1.amazonaws.com/anumolu/Tomcat/apache-tomcat-7.0.39.gz"
default['tomcat']['config_dir']="/opt"
default['tomcat']['user']={
                              "admin" => "admin",
							   "sri" => "sri"
						   }
#default['tomcat']['password']="admin"
default['tomcat']['role']="manager-gui"

