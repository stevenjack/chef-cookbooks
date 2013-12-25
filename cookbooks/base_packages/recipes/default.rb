# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: base_packages
# Recipe:: default
#

execute 'update base packages' do
  command 'yum -y update'
end

node[:base_packages][:packages].each do |package|
  rpm = package[:name]
  url = package[:url]
  postflight = package[:postflight] unless !package.has_key?(:postflight)

  bash "download #{rpm}" do
    code <<-EOH
      curl --insecure --cert /root/.yum/dev.bbc.co.uk.pem \
         #{url} \
        -o /tmp/#{rpm}
    EOH
  end

  bash "install #{rpm}" do
    code <<-EOH
      rpm -i /tmp/#{rpm}
    EOH
  end

  file "/tmp/#{rpm}" do
    action :delete
  end

  bash "postflight for #{rpm}" do
    code package[:postflight]
    only_if postflight
  end
end


node[:base_packages][:yum_packages].each do |package|
  yum_package package.name do
    action :install
  end
end
