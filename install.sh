#!/usr/bin/env bash
set -e
set -o pipefail

cd "ghidra_${GHIDRA_VERSION}_PUBLIC"
support/buildGhidraJar

mvn install:install-file -DgroupId=$GROUP -DartifactId=ghidra -Dpackaging=jar -Dversion=$GHIDRA_VERSION -Dfile=ghidra.jar -DgeneratePom=true
