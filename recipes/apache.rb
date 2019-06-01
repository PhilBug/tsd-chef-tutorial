#
# Cookbook:: tsd-chef
# Recipe:: apache
#
# Copyright:: 2019, The Authors, All Rights Reserved.

service 'apache2' do
  action :start
end

template '/var/www/html/index.html' do
  source 'welcome-page.erb'
  mode '0755'
  owner 'tsd'
  group 'tsd'
  variables(
    name: 'Your name here'
  )

  action :create
end
