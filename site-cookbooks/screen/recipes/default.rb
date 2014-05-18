#
# Cookbook Name:: screen
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{autoconf automake}.each do |pkg|
    yum_package pkg do
        action :install
    end
end


git "/tmp/screen" do
    repository "git://git.savannah.gnu.org/screen.git"
    action :checkout
end

bash "install screen" do
    user 'root'
    group 'root'
    code <<-EOC
        cd /tmp/screen/src
        ./autogen.sh
        ./configure --prefix=/usr/local --enable-colors256
        make
        sudo make install
    EOC
    not_if "/usr/local/bin/screen --version | grep -q '4.02.01'"
end
