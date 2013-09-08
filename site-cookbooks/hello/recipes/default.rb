#
# Cookbook Name:: hello
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
file "/tmp/something" do
    owner "root"
    group "root"
    mode "0755"
    action :create
end
