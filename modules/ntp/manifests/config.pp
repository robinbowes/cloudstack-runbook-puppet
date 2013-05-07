class ntp::config(
  $servers
) {

    file { '/etc/ntp.conf':
        replace => true,
        content => template('ntp/ntp.conf.erb'),
    }

}
