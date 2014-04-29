#
# Cookbook Name:: localedef
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "localedef" do
  user "root"
  group "root"
  command "localedef -f UTF-8 -i ja_JP ja_JP"
  action :run
  not_if "locale -a | grep -q 'ja_JP'"
end
