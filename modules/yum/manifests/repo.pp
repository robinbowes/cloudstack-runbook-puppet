define yum::repo(
  $repolist
) {

  file{"/etc/yum.repos.d/$name.repo":
    content => template('yum/repo.erb'),
  }

}
