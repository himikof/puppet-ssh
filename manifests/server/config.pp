class ssh::server::config (
  $password_auth,
) {
    file { $ssh::params::sshd_config:
        ensure  => present,
        owner   => "root",
        group   => "root",
        mode    => 0600,
        content => template("${module_name}/sshd_config.erb"),
        require => Class["ssh::server::install"],
        notify  => Class["ssh::server::service"],
    }
}
