class ntp(
  $servers
) {

    include
        ::ntp::install,
        ::ntp::service

    class{'::ntp::config': servers => $servers}

    Class[ '::ntp::install' ]->
    Class[ '::ntp::config' ]~>
    Class[ '::ntp::service' ]

}
