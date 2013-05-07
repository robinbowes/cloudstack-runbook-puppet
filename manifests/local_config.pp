  $ntp_servers = [ 'ntp.robinbowes.com' ]
  $yum_repos   = {
    'centos' => {
      name     => 'CentOS Base',
      baseurl  => 'http://cobbler.robinbowes.com/cobbler/ks_mirror/CentOS-6.4-x86_64',
      enabled  => 1,
      gpgcheck => 1,
      gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6',
      protect  => 0,
      priority => 10
    },
    'centos-updates' => {
      name     => 'Updates for CentOS',
      baseurl  => 'http://cobbler.robinbowes.com/cobbler/repo_mirror/CentOS-6.4-Updates-x86_64',
      enabled  => 1,
      gpgcheck => 1,
      gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6',
      protect  => 0,
      priority => 10
    },
    'epel' => {
      name     => 'EPEL packages for EL',
      baseurl  => 'http://cobbler.robinbowes.com/cobbler/repo_mirror/epel-6-x86_64',
      enabled  => 1,
      gpgcheck => 1,
      gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6',
      protect  => 0,
      priority => 10
    },
    'puppet' => {
      name     => 'puppet packages for EL',
      baseurl  => 'http://cobbler.robinbowes.com/cobbler/repo_mirror/puppetlabs-products-el6-x86_64',
      enabled  => 1,
      gpgcheck => 1,
      gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
      protect  => 0,
      priority => 10
    },
    'puppet-deps' => {
      name     => 'puppet dependencies for EL',
      baseurl  => 'http://cobbler.robinbowes.com/cobbler/repo_mirror/puppetlabs-dependencies-el6-x86_64',
      enabled  => 1,
      gpgcheck => 1,
      gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
      protect  => 0,
      priority => 10
    },
    'cloudstack' => {
      name     => 'Cloudstack packages for EL6',
      baseurl  => 'http://cobbler.robinbowes.com/cobbler/repo_mirror/cloudstack',
      enabled  => 1,
      gpgcheck => 0,
      gpgkey   => '',
      protect  => 0,
      priority => 10
    }
  }

