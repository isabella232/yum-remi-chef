default['yum']['remi-php71']['repositoryid'] = 'remi-php71'
default['yum']['remi-php71']['gpgcheck'] = true
default['yum']['remi-php71']['enabled'] = true
default['yum']['remi-php71']['managed'] = true

case node['platform']
when 'fedora'
  # default['yum']['remi-php71']['baseurl'] = "http://cdn.remirepo.net/fedora/#{node['platform_version'].to_i}/php71/$basearch/"
  default['yum']['remi-php71']['mirrorlist'] = "http://cdn.remirepo.net/fedora/#{node['platform_version'].to_i}/php71/mirror"
  default['yum']['remi-php71']['description'] = "Remi's PHP 7.1 RPM repository for Fedora Linux #{node['platform_version'].to_i} - $basearch"
when 'amazon'
  # Default to EL6
  # default['yum']['remi-php71']['baseurl'] = 'http://cdn.remirepo.net/enterprise/6/php71/$basearch/'
  default['yum']['remi-php71']['mirrorlist'] = 'http://cdn.remirepo.net/enterprise/6/php71/mirror'
  default['yum']['remi-php71']['description'] = "Remi's PHP 7.1 RPM repository for Enterprise Linux 6 - $basearch"
else
  # default['yum']['remi-php71']['baseurl'] = "http://cdn.remirepo.net/enterprise/#{node['platform_version'].to_i}/php71/$basearch/"
  default['yum']['remi-php71']['mirrorlist'] = "http://cdn.remirepo.net/enterprise/#{node['platform_version'].to_i}/php71/mirror"
  default['yum']['remi-php71']['description'] = "Remi's PHP 7.1 RPM repository for Enterprise Linux #{node['platform_version'].to_i} - $basearch"
end
