# $FreeBSD$

PACKAGE=	tests

TESTSDIR=       ${TESTSBASE}/sys/netinet6
ATF_TESTS_SH+=	fragmentation
TEST_METADATA.fragmentation+= required_programs="python2.7 scapy"
TEST_METADATA.fragmentation+= required_user="root"
TEST_METADATA+= is_exclusive=true

${PACKAGE}FILES+=	utils.subr \
			frag6/frag6_overhead0.py \
			frag6/frag6_overhead1.py \
			frag6/frag6_mf0long.py \
			frag6/frag6_ext.py \
			frag6/frag6_mf0middle.py \
			frag6/frag6_mf1end.py \
			frag6/frag6.py \
			frag6/frag6_udpatomic.py \
			frag6/frag6_overdrop.py \
			frag6/frag6_refrag.py \
			frag6/frag6_zerofirst.py \
			frag6/frag6_overtail0.py \
			frag6/frag6_overhead.py \
			frag6/frag6_permute.py \
			frag6/frag6_udppayload.py \
			frag6/frag6_opt.py \
			frag6/frag6_overtail1.py \
			frag6/frag6_zerosecond.py \
			frag6/frag6_queuelimit.py \
			frag6/frag6_hop.py \
			frag6/frag6_mf0short.py \
			frag6/frag6_shortatomic.py \
			frag6/frag6_udpheader.py \
			frag6/frag6_overtail.py \
			frag6/frag6_overatomic.py \
			frag6/frag6_mf0atomic.py \
			frag6/frag6_maxlen.py \
			frag6/frag6_timeout.py \
			frag6/frag6_padding.py

.include <bsd.test.mk>
