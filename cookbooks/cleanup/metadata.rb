name              'cleanup'
description       'cleans up directories'
maintainer        'Simon Thulbourn'
maintainer_email  'simon.thulbourn@bbc.co.uk'
license           'MIT'
version           '1.0.0'
recipe            'cleanup::tmp', 'cleanup /tmp'
recipe            'cleanup::root', 'cleanup /root'
recipe            'cleanup::var', 'cleanup /var'

%w{centos amazon}.each do |os|
  supports os
end
