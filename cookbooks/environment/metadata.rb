name              'environment'
description       'sets up environment'
maintainer        'Simon Thulbourn'
maintainer_email  'simon.thulbourn@bbc.co.uk'
license           'MIT'
version           '1.0.0'
recipe            'environment::subversion', 'sets up subversion'
recipe            'environment::reith_proxies', 'turns off reith proxies'
recipe            'environment::path', 'updates PATH environment variable'
recipe            'environment::term', 'updates TERM environment variable'


%w{centos amazon}.each do |os|
  supports os
end
