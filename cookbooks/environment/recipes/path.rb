# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: environment
# Recipe:: path
#

bash 'update path' do
  code <<-EOH
    echo 'export PATH=/sbin:/usr/sbin:/usr/local/sbin:$PATH' >> /etc/bashrc
  EOH
end
