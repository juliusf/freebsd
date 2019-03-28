# $FreeBSD$

PACKAGE=	tests

TESTSDIR=       ${TESTSBASE}/sys/netinet6
ATF_TESTS_SH+=	jumbograms
TEST_METADATA.jumbograms+= required_programs="python2.7 scapy"
TEST_METADATA.jumbograms+= required_user="root"
TEST_METADATA+= is_exclusive=true

${PACKAGE}FILES+=	utils.subr \
			v6_jumbograms/v6_jumbogram.py \
			v6_jumbograms/v6_jumbo_invalid_packet01.py
.include <bsd.test.mk>
