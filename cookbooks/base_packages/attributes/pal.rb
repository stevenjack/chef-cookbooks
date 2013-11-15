# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: base_packages
#

default[:base_packages][:packages] = [
  {
    :url => 'https://yum.dev.bbc.co.uk/master/noarch/bbc-conf-2.17-130476.noarch.rpm'
  },
  {
    :url => 'https://yum.dev.bbc.co.uk/master/noarch/bbc-rpm-sandbox-base-1.3.16-1026276.49.noarch.rpm'
    :postflight => <<-EOH
      /tmp/postflight
    EOH
  }
]
