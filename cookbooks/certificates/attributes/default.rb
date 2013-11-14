# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: certificates
#

default[:certificates][:locations] = []

case node[:hostname]
when 'pal.sandbox'
  include_attribute 'certificates::pal'
when 'sandbox.bbc.co.uk'
  include_attribute 'certificates::aws'
end

