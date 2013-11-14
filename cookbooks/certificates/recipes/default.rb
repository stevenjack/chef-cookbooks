# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: certificates
# Recipe:: default
#

node[:certificates][:locations].each do |location|
  file location do
    content node[:developer_certificate]

    owner "root"
    group "root"

    mode "0600"

    action :create_if_missing
  end
end
