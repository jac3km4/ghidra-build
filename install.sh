#!/usr/bin/env bash
set -e
set -o pipefail

cd "ghidra_${GHIDRA_VERSION}_PUBLIC"
support/buildGhidraJar

mvn install:install-file -DgroupId=$GROUP -DartifactId=ghidra -Dpackaging=jar -Dversion=$VERSION -Dfile=ghidra.jar -DgeneratePom=true
cp "./staging-docs/api/javadoc.jar" "$HOME/.m2/repository/${GROUP//.//}/ghidra/${VERSION}/ghidra-${VERSION}-javadoc.jar"
