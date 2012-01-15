class ssh::knownhosts ($use_exports) {
    if $use_exports {
        Sshkey <<| |>> {
            ensure => present,
        }
    }
}
