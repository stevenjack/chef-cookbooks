# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: base_packages
#

default[:base_packages][:packages] = []
default[:base_packages][:yum_packages] = []

case node[:hostname]
when 'pal.docker.sandbox'
  include_attribute 'base_packages::docker'
when 'pal.sandbox'
  include_attribute 'base_packages::pal'
when 'sandbox.bbc.co.uk'
  include_attribute 'base_packages::aws'
end
