# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: base_packages
#
#

include_attribute 'base_packages::pal'

default[:base_packages][:yum_packages] = [
  {
    :name => 'phantomjs-1.9.2-1.bbc.el5.x86_64'
  }
]
