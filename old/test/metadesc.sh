#!/usr/bin/env bash

# Test for a description meta tag at index page

TESTNAME="META description test"
FILE="${SITEDIR}/index.html"
TEXT="<meta name=\"description\""

echo "STARTING: ${TESTNAME}"
echo "Searching ${TEXT} in ${FILE}"

if [ ! -s "$FILE" ]; then
	echo "$FILE does not exist OR its size is 0"
	echo "ERROR: ${TESTNAME}"
	exit 1
else
	grep "${TEXT}" "${FILE}"
	if [ ! $? -eq 0 ]; then
		echo "${TEXT} not found in ${FILE}"
		echo "ERROR: ${TESTNAME}"
		exit 1
	fi
fi

echo "DONE: ${TESTNAME}"
