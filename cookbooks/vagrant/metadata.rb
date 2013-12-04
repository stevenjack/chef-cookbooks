name              'vagrant'
description       'sets up vagrant'
maintainer        'Simon Thulbourn'
maintainer_email  'simon.thulbourn@bbc.co.uk'
license           'MIT'
version           '1.0.0'
recipe            'vagrant', 'sets up vagrant'
recipe            'vagrant::dd', 'cleans disk'
recipe            'vagrant::network', 'sets up network adapters'
recipe            'vagrant::nfs', 'installs nfs'
recipe            'vagrant::ssh', 'installs ssh keys'
recipe            'vagrant::sudoer', 'add vagrant user to sudoers'
recipe            'vagrant::tty', 'disables requiretty in ssh'
recipe            'vagrant::user', 'creates vagrant user'

%w{centos amazon}.each do |os|
  supports os
end
