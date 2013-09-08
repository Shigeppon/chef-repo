#
# Cookbook Name:: git
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{cpan gettext}.each do |pkg|
    yum_package pkg do
        action :install
    end
end

bash "install git" do
    user 'vagrant'
    group 'vagrant'
    cwd '/tmp'
    code <<-EOC
        wget https://git-core.googlecode.com/files/git-1.8.4.tar.gz
        tar zxvf git-1.8.4.tar.gz
        cd git-1.8.4
        ./configure --prefix=/usr/local
        make
        sudo make install
    EOC
    not_if "/usr/local/bin/git --version | grep -q '1.8.4'"
end
