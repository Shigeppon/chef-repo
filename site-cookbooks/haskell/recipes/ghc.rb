#
# Cookbook Name:: ghc
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

install_dir = '/usr/local/src'
version     = node['ghc']['version']
source_uri  = node['ghc']['source_uri']
configure   = node['ghc']['configure']

node['ghc']['packages'].each do |package_name|
  package "#{package_name}" do
    :install
  end
end

remote_file "/tmp/ghc-#{version}-x86_64-unknown-linux.tar.bz2" do
  #not_if "/usr/local/bin/ghc --version | grep -q #{version}"
  source "#{source_uri}"
end

bash "install ghc" do
  #not_if "/usr/local/bin/ghc --version | grep -q #{version}"
  user 'root'

  code <<-EOC
    install -d #{install_dir}
    tar jxf /tmp/ghc-#{version}-x86_64-unknown-linux.tar.bz2 -C #{install_dir}
    cd #{install_dir}/ghc-#{version}
    #{configure} && sudo make install
  EOC
end
