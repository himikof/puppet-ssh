class ssh::client ($use_exports = false) {
    include ssh::params, ssh::client::install, ssh::client::config
    class {'ssh::knownhosts': use_exports => $use_exports;}
}
