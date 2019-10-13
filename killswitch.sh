#!/bin/bash

# Dependencies: ufw

# Allow connectiosn to/from the internal network
ufw allow in to 192.168.1.0/24
ufw allow out to 192.168.1.0/24

# Block all by default
ufw default deny outgoing
ufw default deny incoming

# Allow the vpn server on specific ports
# The IP and port numbers can be found in the vpn config
ufw allow out to IP port PORTNUMBER proto udp

ufw allow out on tun0 from any to any
ufw allow in on tun0 from any to any

ufw enable
