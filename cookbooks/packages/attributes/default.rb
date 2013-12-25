# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: packages
#

default[:packages][:to_install] = []

case node[:hostname]
when 'docker.sandbox'
  include_attribute 'packages::docker'
when 'pal.sandbox'
  include_attribute 'packages::pal'
when 'sandbox.bbc.co.uk'
  include_attribute 'packages::aws'
end
