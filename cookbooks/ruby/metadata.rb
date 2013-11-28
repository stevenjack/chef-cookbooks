name              'ruby'
description       'installs rubies'
maintainer        'Simon Thulbourn'
maintainer_email  'simon.thulbourn@bbc.co.uk'
license           'MIT'
version           '1.0.0'
recipe            'ruby::install', 'installs ruby versions'

%w{centos amazon}.each do |os|
  supports os
end

attribute 'ruby/versions',
display_name: 'ruby/versions',
description: 'array of ruby versions'
