#!/bin/sh
# $FreeBSD: releng/10.3/tools/tools/shlib-compat/test/regress.t 248693 2013-03-25 00:31:14Z gleb $

cd `dirname $0`

m4 regress.m4 regress.sh | sh
