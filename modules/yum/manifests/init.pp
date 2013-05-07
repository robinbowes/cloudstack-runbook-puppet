class yum(
  $repolist
) {

  include
    ::yum::install,
    ::yum::config

  Class['::yum::install']->
  Class['::yum::config']->
  class{'::yum::repos': repolist => $repolist}

}
