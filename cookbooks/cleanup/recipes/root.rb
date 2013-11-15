# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: cleanup
# Recipe:: root
#

execute 'clean up /root' do
  command 'rm -rf /root/*'
end

execute 'clean up /root/.yum' do
  command 'rm -rf /root/.yum/*'
end
