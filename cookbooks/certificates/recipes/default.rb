# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: certificates
# Recipe:: default
#

case node['hostname']
when 'pal.sandbox'
  include_attribute 'certificates::pal'
when 'sandbox.bbc.co.uk'
  include_attribute 'certificates::aws'
else
  include_attribute 'certificates::default'
end

node[:certificates][:locations].each do |location|
  file location do
    content node[:developer_certificate]

    owner "root"
    group "root"

    mode "0600"

    action :create_if_missing
  end
end
