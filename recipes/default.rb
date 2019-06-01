#
# Cookbook:: tsd-chef
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

group 'tsd' do
  gid 1234

  action :create
end

user 'tsd' do
  comment 'This is user created by chef'
  uid 1234
  gid 1234
  home '/home/tsd'
  shell '/bin/bash'
  password 'admin'
  manage_home true

  action :create
end

file '/home/tsd/tsd-testfile' do
  content 'This file was created by chef'
  mode '754'
  owner 'tsd'
  group 'tsd'

  action :create
end
