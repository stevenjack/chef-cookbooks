# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: vagrant
# Recipe:: nfs
#

package "nfs-utils"
package "nfs-utils-lib"

service "portmap" do
  action [:enable, :start]
end

service "nfs" do
  action [:enable, :start]
end
