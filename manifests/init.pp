# == Class: simple_fusioninventory
#
# === Parameters
# === Variables
# === Examples
# === Authors
# Author Name Juan Carlos <juan.deguer@gmail.com>
#

class simple_fusioninventory (
        $pkgfusion              = $::simple_fusioninventory::params::pkgfusion,
        $crondest               = $::simple_fusioninventory::params::crondest,
        $conf_template          = $::simple_fusioninventory::params::conf_template,
        $manage_repo            = $::simple_fusioninventory::params::manage_repo,
        $activerehashing        = $::simple_fusioninventory::params::activerehashing,
        $appendfsync            = $::simple_fusioninventory::params::appendfsync,
        $appendonly             = $::simple_fusioninventory::params::appendonly,
        $server                 = $::simple_fusioninventory::params::server,
        $ruta_web_glpi          = $::simple_fusioninventory::params::ruta_web_glpi,
        $delaytime              = $::simple_fusioninventory::params::delaytime,
        $lazy                   = $::simple_fusioninventory::params::lazy,
        $scan_homedirs          = $::simple_fusioninventory::params::scan_homedirs,
        $scan_profiles          = $::simple_fusioninventory::params::scan_profiles,
        $html                   = $::simple_fusioninventory::params::html,
        $backend_collect_timeout = $::simple_fusioninventory::params::backend_collect_timeout,
        $force                  = $::simple_fusioninventory::params::force,
        $additional_content     = $::simple_fusioninventory::params::additional_content,
        $no_p2p                 = $::simple_fusioninventory::params::no_p2p,
        $proxy                  = $::simple_fusioninventory::params::proxy,
        $user                   = $::simple_fusioninventory::params::user,
        $password               = $::simple_fusioninventory::params::password,
        $ca_cert_dir            = $::simple_fusioninventory::params::ca_cert_dir,
        $ca_cert_file           = $::simple_fusioninventory::params::ca_cert_file,
        $no_ssl_check           = $::simple_fusioninventory::params::no_ssl_check,
        $timeout                = $::simple_fusioninventory::params::timeout,
        $no_httpd               = $::simple_fusioninventory::params::no_httpd,
        $httpd_ip               = $::simple_fusioninventory::params::httpd_ip,
        $httpd_port             = $::simple_fusioninventory::params::httpd_port,
        $httpd_trust            = $::simple_fusioninventory::params::httpd_trust,
        $logger                 = $::simple_fusioninventory::params::logger,
        $logfacility            = $::simple_fusioninventory::params::logfacility,
        $color                  = $::simple_fusioninventory::params::color,
        $tag                    = $::simple_fusioninventory::params::tag,
        $debug                  = $::simple_fusioninventory::params::debug,
        $config_dir             = $::simple_fusioninventory::params::config_dir,
        $config_dir_mode        = $::simple_fusioninventory::params::config_dir_mode,
        $config_file            = $::simple_fusioninventory::params::config_file,
        $config_file_mode       = $::simple_fusioninventory::params::config_file_mode,
        $config_group           = $::simple_fusioninventory::params::config_group,
        $config_owner           = $::simple_fusioninventory::params::config_owner,
        $daemonize              = $::simple_fusioninventory::params::daemonize,
        $log_dir_mode           = $::simple_fusioninventory::params::log_dir_mode,
        $package_ensure         = $::simple_fusioninventory::params::package_ensure,
        $package_name           = $::simple_fusioninventory::params::package_name,
        $service_enable         = $::simple_fusioninventory::params::service_enable,
        $use_ca_cert            = $::simple_fusioninventory::params::use_ca_cert,
        $ca_cert_template       = $::simple_fusioninventory::params::ca_cert_template,
) inherits simple_fusioninventory::params {

  include simple_fusioninventory::install
  include simple_fusioninventory::config
  
  Class['simple_fusioninventory::install'] -> Class['simple_fusioninventory::config'] -> Class['simple_fusioninventory::service']

}
