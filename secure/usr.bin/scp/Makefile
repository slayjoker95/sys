# $FreeBSD: releng/10.3/secure/usr.bin/scp/Makefile 296853 2016-03-14 13:05:13Z des $

.include <bsd.own.mk>

PROG=	scp
SRCS=	scp.c
CFLAGS+=-I${SSHDIR} -include ssh_namespace.h
SRCS+=	ssh_namespace.h

DPADD=	${LIBSSH}
LDADD=	-lssh
USEPRIVATELIB= ssh

.if ${MK_LDNS} != "no"
CFLAGS+=	-DHAVE_LDNS=1
#DPADD+=	${LIBLDNS}
#LDADD+=	-lldns
#USEPRIVATELIB+= ldns
.endif

DPADD+= ${LIBCRYPT} ${LIBCRYPTO} ${LIBZ}
LDADD+= -lcrypt -lcrypto -lz

.include <bsd.prog.mk>

.PATH:	${SSHDIR}
