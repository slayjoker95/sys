# $FreeBSD: releng/10.3/usr.sbin/pkg/Makefile 283792 2015-05-30 21:47:25Z bapt $

PROG=	pkg
SRCS=	pkg.c dns_utils.c config.c
MAN=	pkg.7

CFLAGS+=-I${.CURDIR}/../../contrib/libucl/include
.PATH:	${.CURDIR}/../../contrib/libucl/include
DPADD=	${LIBARCHIVE} ${LIBFETCH} ${LIBUCL} ${LIBSBUF} ${LIBSSL} \
	${LIBCRYPTO} ${LIBM}
LDADD=	-larchive -lfetch -lucl -lsbuf -lssl -lcrypto -lm
USEPRIVATELIB=	ucl

.include <bsd.prog.mk>
