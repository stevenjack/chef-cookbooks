# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: services
#

default[:services][:services] = [
  'httpd',
  'varnish',
  'memcached'
]
