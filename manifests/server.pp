class ssh::server (
  $exchange_keys = false,
  $password_auth = false,
) {
  include ssh::params, ssh::server::install, ssh::server::service
  class { 'ssh::server::config':
    password_auth => $password_auth
  }
  class { 'ssh::hostkeys':
    exchange_keys => $exchange_keys
  }
}
