class simple_fusioninventory::install
inherits simple_fusioninventory::params
{
        package { $::simple_fusioninventory::package_name:
                ensure => 'installed'
        }
}
