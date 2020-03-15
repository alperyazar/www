#!/usr/bin/env bash

# Test for a valid favicon.ico at main directory

TESTNAME="favicon test"
FILE="${SITEDIR}/img/favicon.ico"
MD5SUMexpected="ebb6340ce1e2157b2ebedfe84555a013"

echo "STARTING: ${TESTNAME}"
echo "Looking for ${FILE}"

if [ ! -s "$FILE" ]; then
	echo "$FILE does not exist OR its size is 0"
	echo "ERROR: ${TESTNAME}"
	exit 1
fi

MD5SUM=`md5sum $FILE | awk '{ print $1 }'`

if [ "$MD5SUMexpected" != "$MD5SUM" ]; then
	echo "ERROR: Different $FILE exists"
	echo "Expected MD5 hash is $MD5SUMexpected, but got $MD5SUM"
fi

echo "DONE: ${TESTNAME}"
