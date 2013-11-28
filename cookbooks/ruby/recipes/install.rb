# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: ruby
# Recipe:: install
#

node[:ruby][:dependencies].each do |dep|
  package dep
end

node[:ruby][:versions].each do |ruby|
  cached_file = "#{Chef::Config[:file_cache_path]}/ruby-#{ruby[:version]}.tar.gz"
  extract_path = "#{Chef::Config[:file_cache_path]}/ruby-#{ruby[:version]}"

  remote_file cached_file do
    source "http://cache.ruby-lang.org/pub/ruby/ruby-#{ruby[:version]}.tar.gz"
  end

  directory extract_path do
    action :create
  end

  bash "install ruby #{ruby[:version]}" do
    code <<-EOH
      tar xzf #{cached_file} -C #{extract_path} --strip 1
      cd #{extract_path}
      ./configure --prefix=#{ruby[:prefix]}
      make
      make install
    EOH
  end
end
