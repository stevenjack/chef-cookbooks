# Author:: Steven Jack(stevenjack@gmail.com)
# Cookbook Name:: dnsmasq
# Recipe:: default
#

package 'dnsmasq' do
  action :install
end

cookbook_file '/etc/dnsmasq.conf' do
    source 'conf'
end

template "/etc/dnsmasq.d/0hosts" do
  source "0hosts.erb"
  mode 0644
  owner "root"
  group "root"
  variables({
     :local_domains => node[:dnsmasq][:local_domains]
  })
end

template "/etc/resolv.dnsmasq" do
  source "resolv.dnsmasq.erb"
  mode 0644
  owner "root"
  group "root"
  variables({
     :dns_servers => node[:dnsmasq][:dns_servers]
  })
end
