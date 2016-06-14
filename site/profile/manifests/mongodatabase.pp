class profiles::mongodatabase {


  # Use 10gen repositories instead of distribution's
  class { 'mongodb::globals':
    manage_package_repo => true,
    version             => $ver
  }->

  class { 'mongodb::client':
    require => Class['Mongodb::globals']
  }

  class { 'mongodb::server':
    ensure  => present,
    port    => 27017,
    bind_ip => 0.0.0.0,
    verbose => true,
    auth    => true,
    journal => true,
    rest    => false,
    require => [Class['Mongodb::client']]
  }

  package { ['mongodb-org-tools']:
    ensure => present,
    before => Class['mongodb::server']
  }

}
