# $FreeBSD: releng/10.3/kerberos5/libexec/kdigest/Makefile 289042 2015-10-08 17:49:14Z bdrewery $

PROG=	kdigest
MAN=	kdigest.8
CFLAGS+=	-I${KRB5DIR}/lib/asn1 \
		-I${KRB5DIR}/lib/roken \
		-I${KRB5DIR}/lib/sl -I.
DPADD=	${LIBKRB5} ${LIBHEIMNTLM} ${LIBROKEN} ${LIBASN1} ${LIBCRYPTO} \
	${LIBCRYPT} ${LIBSL} ${LIBVERS} ${LIBEDIT}
LDADD=	-lkrb5 -lheimntlm -lroken -lasn1 -lcrypto -lcrypt ${LIBSL} \
	${LIBVERS} -ledit
SRCS=	kdigest.c \
	kdigest-commands.c \
	kdigest-commands.h

CLEANFILES=	kdigest-commands.h kdigest-commands.c

kdigest-commands.h: kdigest-commands.in
	${SLC} ${.ALLSRC:M*.in}

kdigest-commands.c: kdigest-commands.h

.include <bsd.prog.mk>

.PATH: ${KRB5DIR}/kuser
