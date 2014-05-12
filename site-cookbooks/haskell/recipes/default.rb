#
# Cookbook Name:: haskell
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

install_dir = '/usr/local/src'
version     = node['haskell']['version']
source_uri  = node['haskell']['source_uri']
configure   = node['haskell']['configure']

node['haskell']['packages'].each do |package_name|
  package "#{package_name}" do
    :install
  end
end

remote_file "/tmp/haskell-platform-#{version}.tar.gz" do
  #not_if "/usr/local/bin/ghc --version | grep -q #{version}"
  source "#{source_uri}"
end

bash "install haskell" do
  #not_if "/usr/local/bin/ghc --version | grep -q #{version}"
  user 'root'

  code <<-EOC
    install -d #{install_dir}
    tar zxf /tmp/haskell-platform-#{version}.tar.gz -C #{install_dir}
    cd #{install_dir}/haskell-platform-#{version}
    #{configure} && make && make install
  EOC
end
