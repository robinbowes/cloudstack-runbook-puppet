class yum::install {

  package{ [
    'yum',
    'yum-plugin-priorities',
    'yum-utils'
  ]:
    ensure => installed,
  }

}
