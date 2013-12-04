# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: vagrant
# Recipe:: sudoer
#

package "sudo"

bash "su" do
  code <<-EOH
    echo \"vagrant ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers
  EOH
end

file "/etc/sudoers" do
  mode 00440
  action :touch
end
