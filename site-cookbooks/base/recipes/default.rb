#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

file '/etc/yum.conf' do 
  _file = Chef::Util::FileEdit.new(path)
  _file.search_file_replace_line('exclude=kernel', "#exclude=kernel\n")
  _file.write_file
  #content _file.send(:contents).join
  action :create
end.run_action(:create)
