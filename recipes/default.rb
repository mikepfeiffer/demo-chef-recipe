#Run apt-get update

execute "apt-get update" do
	command "apt-get update"
end

#Install apache

package "apache2" do
	action :install
end

#Start apache service and enable service

service "apache2" do
	action [:start, :enable]
end

cookbook_file "/var/www/html/index.html" do
	source "index.html"
	mode "0644"
end
