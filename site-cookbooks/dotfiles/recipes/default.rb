#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "dotfiles" do
    repository "git@github.com:Shigeppon/dotfiles.git"
    action :sync
end
