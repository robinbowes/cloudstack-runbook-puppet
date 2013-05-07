class cloudstack::hypervisor::config{

  file{
    '/etc/libvirt/qemu.conf':
      source => 'puppet:///modules/cloudstack/qemu.conf';
    '/etc/libvirt/libvirtd.conf':
      source => 'puppet:///modules/cloudstack/libvirtd.conf';
    '/etc/sysconfig/libvirtd':
      source => 'puppet:///modules/cloudstack/libvirtd';
  }

}
