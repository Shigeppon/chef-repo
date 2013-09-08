#
# Cookbook Name:: vim
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "install vim" do
    user 'root'
    group 'root'
    cwd '/usr/local/src'
    code <<-EOC
        wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
        tar jxvf vim-7.4.tar.bz2
        cd vim74
        ./configure --prefix=/usr/local --enable-multibyte --with-features=huge --disable-selinux
        make
        sudo make install
    EOC
    not_if "/usr/local/bin/vim --version | grep -q '7.4'"
end
