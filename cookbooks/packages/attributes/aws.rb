# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: packages
#

default[:packages][:to_install] = [
  'pigz',
  'apr',
  'apr-util',
  'mock',
  'openssl-devel',
  'pyOpenSSL',
  'apache-maven',
  'subversion',
  'git-core'
]
