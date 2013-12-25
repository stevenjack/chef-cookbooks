name              'network'
description       'installs network config'
maintainer        'Steven Jack'
maintainer_email  'stevenmajack@gmail.com'
license           'MIT'
version           '1.0.0'
recipe            'default', 'Adds the default networking config'

%w{centos}.each do |os|
  supports os
end
