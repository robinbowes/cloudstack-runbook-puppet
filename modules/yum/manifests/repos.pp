class yum::repos(
  $repolist
) {

  yum::repo{[keys($repolist)]:
    repolist => $repolist
  }

}
