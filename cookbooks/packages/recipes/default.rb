# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: packages
# Recipe:: default
#

execute 'update packages' do
  command 'yum -y update'
end

node[:packages][:to_install].each do |p|

  if !p.is_a? String
    execute "Install package manually" do
      command "yum install -y #{p.name} #{p.options}"
    end
  else
    package p do
      action :install
    end
  end

end
