class ssh (
  $exchange_keys = false
) {
  class { 'ssh::server': exchange_keys => $exchange_keys}
  class { 'ssh::client': exchange_keys => $exchange_keys}
}
