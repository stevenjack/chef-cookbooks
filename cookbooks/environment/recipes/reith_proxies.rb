# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: environment
# Recipe:: reith_proxies
#

execute 'reithproxies off' do
  command '/usr/sbin/reithproxies off'
end
