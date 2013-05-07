class cloudstack::hypervisor{

  include
    ::cloudstack::hypervisor::install,
    ::cloudstack::hypervisor::config,
    ::cloudstack::hypervisor::service,
    ::cloudstack::hypervisor::cgconfig

  Class['::cloudstack::hypervisor::install']->
  Class['::cloudstack::hypervisor::config']~>
  Class['::cloudstack::hypervisor::service']

  Class['::cloudstack::hypervisor::cgconfig']~>
  Class['::cloudstack::hypervisor::service']
}
