import "local_config"
node common {
  class{ 'cloudstack::common':
    ntp_servers => $ntp_servers,
    yum_repos   => $yum_repos,
  }
}

node "test01.robinbowes.com" inherits common{

  include
    ::cloudstack::management

}

node "cloudstack.robinbowes.com" inherits common{

  include
    ::cloudstack::hypervisor

}

# this only for testing
node "lenny.robinbowes.com" inherits common{

  include
    ::cloudstack::management,
    ::cloudstack::hypervisor

}
