#	@(#)Makefile	8.1 (Berkeley) 6/6/93
# $FreeBSD: releng/10.3/usr.bin/w/Makefile 288139 2015-09-23 01:07:45Z delphij $

PROG=	w
SRCS=	fmt.c pr_time.c proc_compare.c w.c
MAN=	w.1 uptime.1
DPADD=	${LIBKVM} ${LIBUTIL}
LDADD=	-lkvm -lutil
LINKS=	${BINDIR}/w ${BINDIR}/uptime

.PATH: ${.CURDIR}/../../bin/ps

.include <bsd.prog.mk>
