class ssh ($use_exports = false) {
    class {'ssh::server': use_exports => $use_exports;}
    class {'ssh::client': use_exports => $use_exports;}
}
