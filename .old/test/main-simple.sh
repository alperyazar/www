#!/usr/bin/env bash

set -e

CURRDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
SITEDIR="${CURRDIR}/../site"

echo "Running Simple Tests..."
echo "Current Directory: ${CURRDIR}"
echo "Site Directory: ${SITEDIR}"

source "${CURRDIR}/favicon.sh"
source "${CURRDIR}/ga.sh"
source "${CURRDIR}/robotstxt.sh"
source "${CURRDIR}/metadesc.sh"

echo "Done with Simple Tests."
