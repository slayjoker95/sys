#!/bin/sh
# $FreeBSD: releng/10.3/tools/regression/pjdfstest/tests/mkdir/04.t 166065 2007-01-17 01:42:12Z pjd $

desc="mkdir returns ENOENT if a component of the path prefix does not exist"

dir=`dirname $0`
. ${dir}/../misc.sh

echo "1..3"

n0=`namegen`
n1=`namegen`

expect 0 mkdir ${n0} 0755
expect ENOENT mkdir ${n0}/${n1}/test 0755
expect 0 rmdir ${n0}
