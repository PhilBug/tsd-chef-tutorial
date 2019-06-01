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

(1..10).each do |n|
  file "/home/tsd/file#{n}" do
    content "This is an example content of file#{n}"
    mode 0755
    owner 'tsd'
    group 'tsd'

    action :create
  end
end

package %w(python3 apache2) do
  version ['3.5.1-3', '2.4.18-2ubuntu3.10']

  action :install
end
