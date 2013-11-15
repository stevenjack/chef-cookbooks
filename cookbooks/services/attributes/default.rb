# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: services
#

default[:services][:services] = []

case node[:hostname]
when 'pal.sandbox'
  include_attribute 'services::pal'
end
