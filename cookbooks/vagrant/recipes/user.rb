# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: vagrant
# Recipe:: user
#

user 'vagrant' do
  action :create

  home '/home/vagrant'
end

bash 'password' do
  code <<-EOH
    echo vagrant:vagrant | chpasswd
  EOH
end


