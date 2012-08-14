class ssh::client::install {
  case $::operatingsystem {
    Gentoo: {
      include ssh::gentoo
    }
    default: {
      package { $ssh::params::client_package_name:
        ensure => 'present',
      }
    }
  }
}
