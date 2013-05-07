class cloudstack::common(
  $ntp_servers,
  $yum_repos
) {

  class{'yum': repolist => $yum_repos, stage => 010}->
  class{'selinux': mode => 'permissive'}->
  class{'ntp': servers => $ntp_servers}

}
