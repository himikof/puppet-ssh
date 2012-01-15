class ssh::install {
    
    if ($ssh::params::server_package_name == $ssh::params::client_package_name) {
        @package { $ssh::params::server_package_name:
            ensure => present,
        }
    } else {
        @package { $ssh::params::server_package_name:
            ensure => present,
        }
        
        @package { $ssh::params::client_package_name:
            ensure => present,
        }
    }
    
}
