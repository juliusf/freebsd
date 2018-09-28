# $FreeBSD$

PACKAGE=	tests

TESTSDIR=       ${TESTSBASE}/sys/netinet6/ipv6
ATF_TESTS_SH+=	fragmentation

${PACKAGE}FILES+=	utils.subr \
			regress/frag6/frag6_overhead0.py \
			regress/frag6/frag6_overhead1.py \
			regress/frag6/frag6_mf0long.py \
			regress/frag6/frag6_ext.py \
			regress/frag6/frag6_mf0middle.py \
			regress/frag6/frag6_mf1end.py \
			regress/frag6/frag6.py \
			regress/frag6/frag6_udpatomic.py \
			regress/frag6/frag6_overdrop.py \
			regress/frag6/frag6_refrag.py \
			regress/frag6/frag6_zerofirst.py \
			regress/frag6/frag6_overtail0.py \
			regress/frag6/frag6_overhead.py \
			regress/frag6/frag6_permute.py \
			regress/frag6/frag6_udppayload.py \
			regress/frag6/frag6_opt.py \
			regress/frag6/frag6_overtail1.py \
			regress/frag6/frag6_zerosecond.py \
			regress/frag6/frag6_queuelimit.py \
			regress/frag6/frag6_hop.py \
			regress/frag6/frag6_mf0short.py \
			regress/frag6/frag6_shortatomic.py \
			regress/frag6/frag6_udpheader.py \
			regress/frag6/frag6_overtail.py \
			regress/frag6/frag6_overatomic.py \
			regress/frag6/frag6_mf0atomic.py \
			regress/frag6/frag6_maxlen.py \
			regress/frag6/frag6_timeout.py \
			regress/frag6/frag6_padding.py

.include <bsd.test.mk>
