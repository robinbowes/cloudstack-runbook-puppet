class mysql::config{

    file { '/etc/my.conf':
        source => 'puppet:///modules/mysql/my.cnf',
    }

}
