name              'certificates'
description       'installs certificates'
maintainer        'Simon Thulbourn'
maintainer_email  'simon.thulbourn@bbc.co.uk'
license           'MIT'
version           '1.0.0'
recipe            'certificates', 'certs'
recipe            'certificates::add', 'certs'
recipe            'certificates::remove', 'certs'

%w{centos amazon}.each do |os|
  supports os
end

attribute 'certificates/locations',
display_name: 'certificates/locations',
description: 'array of locations'
