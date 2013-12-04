# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: vagrant
# Recipe:: dd
#

bash "clean drive" do
  code <<-EOH
    dd if=/dev/zero of=/EMPTY bs=1M
    rm -f /EMPTY
  EOH
end
