#!/bin/sh

# /usr/sbin/in.tftpd -L -s /var/lib/tftpboot/&

/usr/sbin/dnsmasq --no-daemon --dhcp-range=192.168.1.1,proxy

