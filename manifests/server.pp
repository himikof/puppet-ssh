class ssh::server ($use_exports = false) {
    include ssh::params, ssh::server::install, ssh::server::config, ssh::server::service
    class {'ssh::hostkeys': use_exports => $use_exports;}
}
