class ssh::hostkeys ($exchange_keys) {
  if $exchange_keys {
    if $::sshdsakey {
      @@sshkey { "${::fqdn}_dsa":
          host_aliases => [ $::fqdn, $::hostname, $::ipaddress ],
          type         => 'dsa',
          key          => $::sshdsakey,
          tag          => 'exchanged',
          require      => Class['ssh::server::service'],
      }
    }
    if $::sshrsakey {
      @@sshkey { "${::fqdn}_rsa":
          host_aliases => [ $::fqdn, $::hostname, $::ipaddress ],
          type         => 'rsa',
          key          => $::sshrsakey,
          tag          => 'exchanged',
          require      => Class['ssh::server::service'],
      }
    }
    if $::sshecdsakey {
      @@sshkey { "${::fqdn}_ecdsa":
          host_aliases => [ $::fqdn, $::hostname, $::ipaddress ],
          type         => 'ecdsa-sha2-nistp256',
          key          => $::sshecdsakey,
          tag          => 'exchanged',
          require      => Class['ssh::server::service'],
      }
    }
  }
}
