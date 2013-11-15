name              'services'
description       'services management'
maintainer        'Simon Thulbourn'
maintainer_email  'simon.thulbourn@bbc.co.uk'
license           'MIT'
version           '1.0.0'
recipe            'services', 'services management'

%w{centos amazon}.each do |os|
  supports os
end
