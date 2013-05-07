class ntp::service {

    service { 'ntpd':
        enable      => true,
        ensure      => running,
        hasrestart  => true,
        hasstatus   => true,
    }

}
