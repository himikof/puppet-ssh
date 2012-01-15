class ssh::server::install {
    include ssh::install
    realize Package[$ssh::params::server_package_name]
}
