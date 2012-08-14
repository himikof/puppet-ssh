class ssh::hostkeys ($exchange_keys) {

    if $exchange_keys {
        @@sshkey { "${::fqdn}_dsa":
            host_aliases => [ $::fqdn, $::hostname, $::ipaddress ],
            type         => 'dsa',
            key          => $::sshdsakey,
            tag          => 'exchanged',
        }
        @@sshkey { "${fqdn}_rsa":
            host_aliases => [ $::fqdn, $::hostname, $::ipaddress ],
            type         => 'rsa',
            key          => $::sshrsakey,
            tag          => 'exchanged',
        }
    }
}
