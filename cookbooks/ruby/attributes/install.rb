# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: ruby
#

default[:ruby][:dependencies] = [
  'gcc',
  'make',
  'openssl-devel'
]

default[:ruby][:versions] = [
  {
    :version => '2.0.0-p247',
    :prefix => '/usr/local'
  }
]
