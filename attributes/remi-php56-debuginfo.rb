default['yum']['remi-php56-debuginfo']['repositoryid'] = 'remi-php56-debuginfo'
default['yum']['remi-php56-debuginfo']['gpgkey'] = 'http://rpms.remirepo.net/RPM-GPG-KEY-remi'
default['yum']['remi-php56-debuginfo']['gpgcheck'] = true
default['yum']['remi-php56-debuginfo']['enabled'] = false
default['yum']['remi-php56-debuginfo']['managed'] = false

case node['platform']
when 'fedora'
  default['yum']['remi-php56-debuginfo']['baseurl'] = "http://cdn.remirepo.net/fedora/#{node['platform_version'].to_i}/debug-php56/$basearch/"
  default['yum']['remi-php56-debuginfo']['description'] = "Remi's PHP 5.6 RPM repository for Fedora Linux #{node['platform_version'].to_i} - $basearch - debuginfo"
when 'amazon'
  # Default to EL 6
  default['yum']['remi-php56-debuginfo']['baseurl'] = 'http://cdn.remirepo.net/enterprise/6/debug-php56/$basearch/'
  default['yum']['remi-php56-debuginfo']['description'] = "Remi's PHP 5.6 RPM repository for Enterprise Linux 6 - $basearch - debuginfo"
else
  default['yum']['remi-php56-debuginfo']['baseurl'] = "http://cdn.remirepo.net/enterprise/#{node['platform_version'].to_i}/debug-php56/$basearch/"
  default['yum']['remi-php56-debuginfo']['description'] = "Remi's PHP 5.6 RPM repository for Enterprise Linux #{node['platform_version'].to_i} - $basearch - debuginfo"
end
