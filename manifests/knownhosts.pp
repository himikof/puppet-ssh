class ssh::knownhosts ($exchange_keys) {
    if $exchange_keys {
        Sshkey <<| tag == 'exchanged' |>> {
            ensure => present,
        }
    }
}
