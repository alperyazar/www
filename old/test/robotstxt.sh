#!/usr/bin/env bash

# Test for existence of robots.txt file at root

TESTNAME="robots.txt test"
FILE="${SITEDIR}/robots.txt"

echo "STARTING: ${TESTNAME}"
echo "Looking for ${FILE}"

if [ ! -s "$FILE" ]; then
	echo "$FILE does not exist OR its size is 0"
	echo "ERROR: ${TESTNAME}"
	exit 1
fi

echo "DONE: ${TESTNAME}"
