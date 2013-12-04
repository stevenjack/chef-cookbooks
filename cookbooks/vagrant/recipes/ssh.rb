# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: vagrant
# Recipe:: ssh
#

directory '/home/vagrant/.ssh' do
  mode 00700
  owner 'vagrant'
  group 'vagrant'
end

remote_file '/home/vagrant/.ssh/authorized_keys' do
  source 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
  mode 00600
  owner 'vagrant'
  group 'vagrant'
end
