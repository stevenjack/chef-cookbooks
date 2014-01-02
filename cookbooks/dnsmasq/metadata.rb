name              'dnsmasq'
description       'installs and sets up dnsmasq'
maintainer        'Steven Jack'
maintainer_email  'stevenmajack@gmail.com'
license           'MIT'
version           '1.0.0'
recipe            'dnsmasq', 'default'

%w{centos amazon}.each do |os|
  supports os
end

attribute 'dnsmasq/local_domains',
display_name: 'dnsmasq/local_domains',
description: 'array of local domains for dnsmasq'
