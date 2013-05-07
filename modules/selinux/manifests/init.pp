class selinux(
  $mode = 'permissive'
) {

  exec{'/usr/sbin/setenforce 0':}
  file{'/etc/selinux/config':
    content => template('selinux/config.erb');
  }

}
