# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: base_packages
#
#

include_attribute 'packages::pal'

default[:pacakges][:to_install] << 'phantomjs'
default[:pacakges][:to_install] << 'git-core'
