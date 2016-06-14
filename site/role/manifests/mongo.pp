class role::mongo {
    include ::mongodb::server
}

mongodb::db { 'testdb' :
  user 		=> 'ahowell',
  password_hash => '0ba06b1790d48b9baf71162124a04685',
}
