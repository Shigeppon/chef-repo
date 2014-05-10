#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user "shigeo" do
  gid "users"
  home "/home/shigeo"
  shell "/bin/bash"
  password "$1$.G9K5iVi$ZAhyHee35fRxg.6ghEtBZ1"

end
