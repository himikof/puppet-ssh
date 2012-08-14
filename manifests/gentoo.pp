class ssh::gentoo {
  package { 'openssh':
    ensure => 'present',
  }
}
