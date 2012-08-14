class ssh::server (
  $exchange_keys = false,
) {
  include ssh::params, ssh::server::install, ssh::server::config, ssh::server::service
  class { 'ssh::hostkeys':
    exchange_keys => $exchange_keys
  }
}
