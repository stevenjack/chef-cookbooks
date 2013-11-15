# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: base_packages
#

default[:base_packages][:packages] = [
  {
    :url => 'https://repo.dev.bbc.co.uk/tools/infrastructure/sandbox6/trunk/ext/bbc-sandbox6-base-8-3.noarch.rpm'
  },
  {
    :url => 'https://repo.dev.bbc.co.uk/tools/infrastructure/sandbox6/trunk/ext/epel-release-6-5.noarch.rpm'
  }
]
