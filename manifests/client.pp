class ssh::client (
  $exchange_keys = false,
) {
  include ssh::params, ssh::client::install, ssh::client::config
  class { 'ssh::knownhosts':
    exchange_keys => $exchange_keys
  }
}
