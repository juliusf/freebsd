#!/usr/local/bin/python2.7


#       error: IPv6 Payload Length = 0 and
#              IPv6 Next Header = Hop-by-Hop Options and
#              Jumbo Payload option not present

#       expected result:
#             Code: 0
#             Pointer: high-order octet of the IPv6 Payload Length

import os
from addr import *
from scapy.all import *

base = IPv6(plen=0)
base.dst = REMOTE_ADDR6
base.src = LOCAL_ADDR6
extension = IPv6ExtHdrHopByHop()

pkt = base / extension
pkt.len = 0
eth = Ether(src=LOCAL_MAC, dst=REMOTE_MAC) / pkt #/ Raw( load=0xdeadbeef )

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


