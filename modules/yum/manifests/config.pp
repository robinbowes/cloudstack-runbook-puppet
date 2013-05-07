class yum::config {

  file {

    '/etc/yum.conf':
      source => 'puppet:///modules/yum/yum.conf';

    '/etc/yum.repos.d/':
      source  => "puppet:///modules/yum/empty",
      ensure  => directory,
      force   => true,
      recurse => true,
      purge   => true,
      ignore  => ['\.ignore', '\.svn'],

  }

}

