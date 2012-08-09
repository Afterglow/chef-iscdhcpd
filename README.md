Description
===========
Configure ISC DHCPD in a vaguely flexible with extensive templating
Requirements
============

Attributes
==========
The recipe tries to provide sensible defaults for many things which can be overridden from the node attributes.  
    "dhcpd": {
        "domainname": "useast.livingsocial.net"
    },
Subnets are defined within the `subnets` data bag which again provides the optional ability to override settings 
like name or ntp servers. An example databag might look like...
    {
      "id": "vlan903",
      "network": "172.21.0.0",
      "netmask": "255.255.255.0",
      "routers": "172.21.0.1",
      "range": {
        "start": "172.21.0.128",
        "end": "172.21.0.254"
      }
    }
Usage
=====

Add recipe[iscdhcpd] to your runlist. Configure attributes and data_bags as above.
