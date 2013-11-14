# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: clone_repo
# Recipe:: responsive_news
#

include_recipe 'clone_repo'

git 'responsive news' do
  repository '#{node[:clone_repo][:github]}/responsive-news.git'

  depth 1
  destination '/mnt/hgfs/workspace'

  action :sync
end
