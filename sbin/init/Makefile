#	@(#)Makefile	8.1 (Berkeley) 7/19/93
# $FreeBSD: releng/10.3/sbin/init/Makefile 293744 2016-01-12 10:14:57Z trasz $

PROG=	init
SRCS=	init.c getmntopts.c
MAN=	init.8
PRECIOUSPROG=
INSTALLFLAGS=-b -B.bak
CFLAGS+=-DDEBUGSHELL -DSECURE -DLOGIN_CAP -DCOMPAT_SYSV_INIT
DPADD=	${LIBUTIL} ${LIBCRYPT}
LDADD=	-lutil -lcrypt

# Needed for getmntopts.c
MOUNT=	${.CURDIR}/../../sbin/mount
CFLAGS+=-I${MOUNT}
.PATH:	${MOUNT}

NO_SHARED?=	YES

.include <bsd.prog.mk>
