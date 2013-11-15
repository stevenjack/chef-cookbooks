# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: environment
# Recipe:: term
#

bash 'update path' do
  code <<-EOH
    echo 'export TERM=xterm' >> /etc/bashrc
  EOH
end
