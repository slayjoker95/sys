# $FreeBSD: releng/10.3/sys/modules/bwn/Makefile 239462 2012-08-20 18:33:03Z dim $

.PATH: ${.CURDIR}/../../dev/bwn

KMOD=	if_bwn
SRCS=	if_bwn.c if_bwnreg.h if_bwnvar.h
SRCS+=	device_if.h bus_if.h pci_if.h

.include <bsd.kmod.mk>

# XXX Work around clang warning, until maintainer approves fix.
CWARNFLAGS.if_bwn.c=	${NO_WSOMETIMES_UNINITIALIZED}
CWARNFLAGS+=		${CWARNFLAGS.${.IMPSRC:T}}
