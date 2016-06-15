class profile::nodejs {
    
class { '::nodejs':
  nodejs_dev_package_ensure => 'present',
  npm_package_ensure        => 'present',
  repo_class                => '::epel',
}
}
