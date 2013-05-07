class cloudstack::hypervisor::cgconfig{

  file{'/etc/cgconfig.conf':
    source => 'puppet:///modules/cloudstack/cgconfig.conf';
  }

  service{'cgconfig':
    enable      => true,
    ensure      => running,
    hasrestart  => true,
    hasstatus   => true,
    subscribe   => File['/etc/cgconfig.conf'],
  }

}
