name              'base packages'
description       'installs base packages'
maintainer        'Simon Thulbourn'
maintainer_email  'simon.thulbourn@bbc.co.uk'
license           'MIT'
version           '1.0.0'
recipe            'base_packages', 'install base packages'

%w{centos amazon}.each do |os|
  supports os
end

attribute 'base_packages',
display_name: 'base_packages',
description: 'array of hashes'
