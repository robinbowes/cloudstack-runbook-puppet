class cloudstack::hypervisor::service {

    service { 'libvirtd':
        enable      => true,
        ensure      => running,
        hasrestart  => true,
        hasstatus   => true,
    }

}
