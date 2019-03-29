#!/usr/local/bin/python2.7

#      error: IPv6 Payload Length != 0 and
#             Jumbo Payload option present
#
#      expected result:
#             Code: 0
#             Pointer: Option Type field of the Jumbo Payload option

import os
#from addr import *
from scapy.all import *


LOCAL_ADDR6 = "2001:638:501:4ef4:1a66:daff:fe85:3904"
REMOTE_ADDR6 = "2001:638:501:4ef4:2a0:98ff:fe81:4239"

LOCAL_MAC = "18:66:da:85:39:04"
REMOTE_MAC = "00:a0:98:81:42:39"

LOCAL_IF = "tap0"

base = IPv6() #plen=32
base.dst = REMOTE_ADDR6
base.src = LOCAL_ADDR6
extension = IPv6ExtHdrHopByHop()
jumbo = Jumbo()
jumbo.jumboplen = 0xDEADBEEFA
extension.options = jumbo
pkt = base / extension

pkt.show()
eth = Ether(src=LOCAL_MAC, dst=REMOTE_MAC) / pkt / Raw( load=0xdeadbeef )

if os.fork() == 0:
    time.sleep(1)
    sendp(eth, iface=LOCAL_IF)
    exit(0)

ans = sniff( iface=LOCAL_IF, count=1, timeout=3, filter=
            "ip6 and src "+REMOTE_ADDR6+" and dst "+LOCAL_ADDR6+" and icmp6")

for pkt in ans:
	if pkt and pkt.type == ETH_P_IPV6 and \
		ipv6nh[pkt.payload.nh] == 'ICMPv6' and \
		icmp6types[pkt.payload.payload.type] == 'Parameter problem':
		code= pkt.payload.payload.code
                ptr= pkt.payload.payload.ptr
		if code != 0:
			print "WRONG ECHO REPLY ID"
                        exit(2)
                if ptr != 4: # 4th octet in the IPv6 header
                        print "WRONG POINTER"
                        exit(5)

                print("test passed")
                exit(0)
        else:
            print("WRONG PACKET TYPE")
            exit(3)


