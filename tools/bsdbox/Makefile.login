#
# This builds login and friends.
#
# $FreeBSD: releng/10.3/tools/bsdbox/Makefile.login 229675 2012-01-06 00:56:31Z adrian $
#

CRUNCH_PROGS_libexec+=	getty
CRUNCH_PROGS_usr.bin+=	cap_mkdb
CRUNCH_PROGS_usr.sbin+=	pwd_mkdb
