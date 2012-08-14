class ssh::server::install {
  case $::operatingsystem {
    Gentoo: {
      include ssh::gentoo
    }
    default: {
      package { $ssh::params::server_package_name:
        ensure => 'present',
      }
    }
  }
}
