# $FreeBSD$

PACKAGE=	tests

TESTSDIR=       ${TESTSBASE}/sys/netinet6/ipv6
TESTS_SUBDIRS+= regress
ATF_TESTS_SH+=	fragmentation

${PACKAGE}FILES+=	utils.subr 

#${PACKAGE}FILESMODE_pft_ping.py=	0555

.include <bsd.test.mk>
