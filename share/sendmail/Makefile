# $FreeBSD: releng/10.3/share/sendmail/Makefile 291794 2015-12-04 18:21:05Z bdrewery $
#
# Doing a make install builds /usr/share/sendmail/

SENDMAIL_DIR=${.CURDIR}/../../contrib/sendmail
CFDIR=	cf
CFDIRS!=	(cd ${SENDMAIL_DIR}; find -L ${CFDIR} \( \( -name CVS -o -name .svn \) -prune \) -o -type d -print)
CFFILES!=	(cd ${SENDMAIL_DIR}; find -L ${CFDIR} \( \( -name CVS -o -name .svn \) -prune \) -o -type f -print)

DDIR=	${DESTDIR}${SHAREDIR}/sendmail

NO_OBJ=

# Define SHARED to indicate whether you want symbolic links to the system
# source (``symlinks''), or a separate copy (``copies'')
SHARED?=	copies

all clean cleandir depend lint tags:

beforeinstall: ${SHARED}

copies::
	if [ -L ${DDIR}/${CFDIR} ]; then rm -f ${DDIR}/${CFDIR}; fi
.for dir in ${CFDIRS}
	${INSTALL} -o ${BINOWN} -g ${BINGRP} -m 755 -d ${DDIR}/${dir}
.endfor
.for file in ${CFFILES}
	${INSTALL} -o ${BINOWN} -g ${BINGRP} -m 444 ${SENDMAIL_DIR}/${file} ${DDIR}/${file}
.endfor

symlinks::
	rm -rf ${DDIR}/${CFDIR}; ln -s ${SENDMAIL_DIR}/${CFDIR} ${DDIR}/${CFDIR}

.include <bsd.prog.mk>
