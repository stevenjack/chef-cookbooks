# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: clone_repo
#
#
default[:clone_repo][:github] = "https://#{node[:GITHUB_TOKEN]}:x-oauth-basic@github.com/BBC-News"
