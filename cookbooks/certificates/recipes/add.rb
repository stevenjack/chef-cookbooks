# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: certificates
# Recipe:: add
#

include_recipe 'certificates'

node[:certificates][:locations].each do |location|
  directory File.dirname(location) do
    action :create
  end

  file location do
    content node[:developer_certificate]

    owner 'root'
    group 'root'

    mode '0600'

    action :create_if_missing
  end
end
