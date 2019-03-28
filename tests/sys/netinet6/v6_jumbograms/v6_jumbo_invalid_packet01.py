#!/usr/local/bin/python2.7

print "rfc2675 jumbograms"

import os
return 0
from addr import *
from scapy.all import *

#LOCAL_ADDR6 = "2001:638:501:4ef4:1a66:daff:fe85:3904"
#REMOTE_ADDR6 = "2001:638:501:4ef4:2a0:98ff:fe81:4239"

#LOCAL_MAC = "f4:e9:d4:aa:18:20"
#REMOTE_MAC = "00:a0:98:81:42:39"

base = IPv6()
base.dst = REMOTE_ADDR6
base.src = LOCAL_ADDR6

extension = IPv6ExtHdrHopByHop()
jumbo = Jumbo()

jumbo.jumboplen = 0xDEADBEEF
extension.options = jumbo

packet = base/extension
packet.show2()
send(packet)
exit(0)
