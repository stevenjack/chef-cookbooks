name              'virtualbox'
description       'sets up virtualbox guest additions'
maintainer        'Simon Thulbourn'
maintainer_email  'simon.thulbourn@bbc.co.uk'
license           'MIT'
version           '1.0.0'
recipe            'virtualbox', 'sets up virtualbox guest additions'

%w{centos amazon}.each do |os|
  supports os
end
