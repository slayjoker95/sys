#	From: @(#)Makefile	8.1 (Berkeley) 6/8/93
# $FreeBSD: releng/10.3/share/misc/Makefile 280419 2015-03-24 06:55:08Z ngie $

.include <bsd.own.mk>

.PATH:	${.CURDIR}/../../sys/dev/usb

FILES=	ascii birthtoken bsd-family-tree committers-doc.dot committers-ports.dot \
	committers-src.dot eqnchar flowers init.ee \
	iso3166 iso639 latin1 man.template mdoc.template operator pci_vendors \
	scsi_modes \
	organization.dot

NO_OBJ=
FILESDIR=	${BINDIR}/misc

.if ${MK_USB} != "no"
FILES+=	usb_hid_usages
FILES+=	usbdevs
.endif

.include <bsd.prog.mk>
