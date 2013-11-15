name              'packages'
description       'installs packages'
maintainer        'Simon Thulbourn'
maintainer_email  'simon.thulbourn@bbc.co.uk'
license           'MIT'
version           '1.0.0'
recipe            'packages', 'install packages'

%w{centos amazon}.each do |os|
  supports os
end

attribute 'packages/to_install',
display_name: 'packages/to_install',
description: 'array of hashes'
