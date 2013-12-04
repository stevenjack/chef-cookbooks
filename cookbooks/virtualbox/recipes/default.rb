# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: virtualbox
# Recipe:: default
#

# package 'dkms'
package 'kernel-devel'

execute 'build tools' do
  command 'yum groupinstall development-tools'
  returns [0, 1]
end

version = File.read('/root/.vbox_version')

remote_file 'download additions' do
  source "http://download.virtualbox.org/virtualbox/#{version}/VBoxGuestAdditions_#{version}.iso"
  path "/root/VBoxGuestAdditions_#{version}.iso"
end

execute 'mount additions' do
  command "mount -o loop /root/VBoxGuestAdditions_#{version}.iso /mnt"
end

execute 'install additions' do
  command 'sh /mnt/VBoxLinuxAdditions.run --nox11'
  returns [0, 1]
end

execute 'unmount additions' do
  command 'umount /mnt'
end

execute 'remove additions' do
  command "rm -rf /root/VBoxGuestAdditions_#{version}.iso"
end
