default[:dhcpd][:logfacility] = "local7"

case platform
  when "redhat","centos","scientific","fedora","suse","amazon"
    set['dhcpd']['package'] = "dhcp"

  when "debian","ubuntu"
    set['dhcpd']['package'] = "isc-dhcp-server"
end
