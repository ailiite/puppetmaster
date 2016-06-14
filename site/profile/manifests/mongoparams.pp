class mongodb::params inherits mongodb::globals {

          $server_package_name   = pick($::mongodb::globals::server_package_name, 'mongodb-org-server')
          $client_package_name   = pick($::mongodb::globals::client_package_name, 'mongodb-org-shell')
          $mongos_package_name   = pick($::mongodb::globals::mongos_package_name, 'mongodb-org-mongos')
}
