# $FreeBSD: releng/10.3/secure/Makefile 291792 2015-12-04 18:14:31Z bdrewery $

.include <bsd.own.mk>

SUBDIR= lib .WAIT \
	libexec ${_tests} usr.bin usr.sbin
SUBDIR_PARALLEL=

.if ${MK_TESTS} != "no"
_tests=	tests
.endif

# These are the programs which depend on crypto, but not Kerberos.
SPROGS=	lib/libfetch lib/libpam lib/libradius lib/libtelnet	\
	bin/ed libexec/telnetd usr.bin/fetch usr.bin/telnet	\
	usr.sbin/pkg_install usr.sbin/ppp usr.sbin/tcpdump/tcpdump
.if ${MK_SENDMAIL} != "no"
SPROGS+=usr.sbin/sendmail
.endif

# This target is used to rebuild these programs with crypto.
secure: .MAKE .PHONY
.for entry in ${SPROGS}
	cd ${.CURDIR}/../${entry}; \
	${MAKE} cleandir; \
	${MAKE} obj; \
	${MAKE} depend; \
	${MAKE} all; \
	${MAKE} install
.endfor

# This target is used to rebuild these programs without crypto.
insecure: .MAKE .PHONY
.for entry in ${SPROGS}
	cd ${.CURDIR}/../${entry}; \
	${MAKE} -DWITHOUT_CRYPT cleandir; \
	${MAKE} -DWITHOUT_CRYPT obj; \
	${MAKE} -DWITHOUT_CRYPT depend; \
	${MAKE} -DWITHOUT_CRYPT all; \
	${MAKE} -DWITHOUT_CRYPT install
.endfor

.include <bsd.subdir.mk>
