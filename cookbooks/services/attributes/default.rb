# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: services
#

default[:services][:services] = []

case node[:hostname]
when 'docker'
  include_attribute 'services::docker'
when 'pal.sandbox'
  include_attribute 'services::pal'
end
