name              'clone_repo'
description       'Clones a repo'
maintainer        'Simon Thulbourn'
maintainer_email  'simon.thulbourn@bbc.co.uk'
license           'MIT'
version           '1.0.0'
recipe            'clone_repo', 'Nothing'
recipe            'clone_repo::responsive_news', 'Clones reponsive news'

%w{centos amazon}.each do |os|
  supports os
end

attribute 'clone_repo/github',
display_name: 'clone_repo/github',
description: 'github url',
default: 'https://github.com/BBC-News'
