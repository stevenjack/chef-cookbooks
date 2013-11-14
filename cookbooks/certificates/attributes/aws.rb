# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: certificates
#

default[:certificates][:locations] = [
  '/root/.yum/dev.bbc.co.uk.pem',
  '/root/.yum/dev.bbc.co.uk.key'
]
