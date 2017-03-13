#
# Configuration file of the simple_fusioninventory class.
#
class simple_fusioninventory::config {
        file {
                $::simple_fusioninventory::config_dir:
                        ensure => directory,
                        mode   => $::simple_fusioninventory::config_dir_mode;
                $::simple_fusioninventory::config_file:
                        ensure  => present,
                        content => template($::simple_fusioninventory::conf_template);
        }
        if $::simple_fusioninventory::use_ca_cert == true {
                file {
                        $::simple_fusioninventory::ca_cert_dir:
                                ensure => directory,
                                group  => $::simple_fusioninventory::config_group,
                                owner  => $::simple_fusioninventory::config_owner,
                                mode   => $::simple_fusioninventory::log_dir_mode;
                        $::simple_fusioninventory::ca_cert_file:
                                ensure => present,
                                group  => $::simple_fusioninventory::config_group,
                                owner  => $::simple_fusioninventory::config_owner,
                                mode   => $::simple_fusioninventory::log_dir_mode,
                                content => template($::simple_fusioninventory::ca_cert_template);
                }
        }
}
