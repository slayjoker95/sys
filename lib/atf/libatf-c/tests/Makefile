# $FreeBSD: releng/10.3/lib/atf/libatf-c/tests/Makefile 275988 2014-12-21 08:30:18Z ngie $

.include <bsd.init.mk>

TESTSDIR=	${TESTSBASE}/lib/atf/libatf-c
TESTS_SUBDIRS=	detail

ATF=		${.CURDIR:H:H:H:H}/contrib/atf
.PATH:		${ATF}/atf-c
.PATH:		${ATF}/atf-c/detail

CFLAGS+=	-DATF_INCLUDEDIR='"${INCLUDEDIR}"'
CFLAGS+=	-I${ATF}

# macros_test.c contains a double 'const const' which will be gone with
# the import of atf-0.18.
# TODO(jmmv): Remove this workaround once we do that update.
CFLAGS.clang+=	-Wno-duplicate-decl-specifier

FILESDIR=	${TESTSDIR}
FILES=		macros_h_test.c
FILES+=		unused_test.c

.for _T in	atf_c_test \
		build_test \
		check_test \
		error_test \
		macros_test \
		tc_test \
		tp_test \
		utils_test
ATF_TESTS_C+=	${_T}
SRCS.${_T}=	${_T}.c test_helpers.c
.endfor

.include <bsd.test.mk>
