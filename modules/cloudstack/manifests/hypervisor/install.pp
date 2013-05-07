class cloudstack::hypervisor::install{

  package{'cloud-agent':
    ensure => installed
  }

}
