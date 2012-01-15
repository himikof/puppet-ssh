class ssh::client::install {
    include ssh::install
    realize Package[$ssh::params::client_package_name]
}
