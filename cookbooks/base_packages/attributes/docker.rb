# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: base_packages
#
#

include_attribute 'base_packages::pal'

default[:base_packages][:yum_packages] = [
  {
    :name => 'phantomjs'
  }
]
