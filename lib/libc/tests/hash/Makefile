# $FreeBSD: releng/10.3/lib/libc/tests/hash/Makefile 277442 2015-01-20 21:46:04Z ngie $

.include <bsd.own.mk>

TESTSDIR=	${TESTSBASE}/lib/libc/hash

NETBSD_ATF_TESTS_C=

.if ${MK_OPENSSL} != "no"
NETBSD_ATF_TESTS_C+=	sha2_test
.endif

NETBSD_ATF_TESTS_SH=	hash_test

BINDIR=		${TESTSDIR}

PROGS+=		h_hash

FILESDIR=	${TESTSDIR}/data

FILES+=		data/md5test-in
FILES+=		data/md5test-out
FILES+=		data/sha1test-in
FILES+=		data/sha1test-out
FILES+=		data/sha1test2-out

DPADD+=		${LIBMD}
LDADD+=		-lmd
DPADD.sha2_test+=	${LIBCRYPTO}
LDADD.sha2_test+=	-lcrypto

CFLAGS.sha2_test+=	-I${.CURDIR}/../../../../crypto/openssh/openbsd-compat
CFLAGS.sha2_test+=	-I${.CURDIR}/../../../../crypto/openssh

.include "../Makefile.netbsd-tests"

.include <bsd.test.mk>
