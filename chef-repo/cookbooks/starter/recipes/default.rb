# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to Chef, #{node["starter_name"]}!" do
  level :info
end

# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html


if node['platform'] == "ubuntu"
       package ["apache2" , "vim" , "php5" , "mysql-server", "ntp"] do
       action :install 
end
end


if node['platform'] == "centos"
package ["httpd" , "vim" , "php" , "mysql-server", "ntp"] do
        action :install
end
end

if node['platform'] == "ubuntu"
    execute "a2dissite default" do
    command "a2dissite default"
  
end
end

package "httpd" do
action :install
end





