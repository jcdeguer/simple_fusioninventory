#
# Configuration file of the simple_fusioninventory class.
#
class simple_fusioninventory::service {

  exec { $service_name:
    command => '/usr/bin/fusioninventory-agent',
  }

}
