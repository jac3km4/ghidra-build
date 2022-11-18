#!/usr/bin/env bash
set -e
set -o pipefail

curl "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_${GHIDRA_VERSION}_build/ghidra_${GHIDRA_VERSION}_PUBLIC_${GHIDRA_REVISION}.zip" \
    -L -o ghidra.zip
unzip ghidra.zip

cd "./ghidra_${GHIDRA_VERSION}_PUBLIC"
unzip "./docs/GhidraAPI_javadoc.zip" -d ./staging-docs

cd ./staging-docs/api
zip "javadoc.jar" *
