# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: vagrant
# Recipe:: default
#

include_recipe "vagrant::user"
include_recipe "vagrant::sudoer"
include_recipe "vagrant::ssh"
include_recipe "vagrant::nfs"
include_recipe "vagrant::tty"
include_recipe "vagrant::network"
include_recipe "vagrant::dd"
