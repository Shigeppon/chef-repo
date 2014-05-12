#
# Cookbook Name:: git
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

install_dir = '/usr/local/src'
version     = node['git']['version']
source_uri  = node['git']['source_uri']
configure   = node['git']['configure']

node['git']['packages'].each do |package_name|
  package "#{package_name}" do
    :install
  end
end

remote_file "/tmp/git-#{version}.tar.gz" do
  not_if "/usr/local/bin/git --version | grep -q #{version}"
  source "#{source_uri}"
end

bash "install git" do
  not_if "/usr/local/bin/git --version | grep -q #{version}"
  user 'root'

  code <<-EOC
    install -d #{install_dir}
    tar zxf /tmp/git-#{version}.tar.gz -C #{install_dir}
    cd #{install_dir}/git-#{version}
    #{configure} && make && make install
  EOC
end
