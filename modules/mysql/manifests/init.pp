class mysql{

    include
        ::mysql::install,
        ::mysql::config,
        ::mysql::service

    Class[ '::mysql::install' ]->
    Class[ '::mysql::config' ]~>
    Class[ '::mysql::service' ]

}
