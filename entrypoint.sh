#!/bin/sh -l
PACKAGE_JSON_PATH="${1-.}"
echo "Reading package.json from ${PACKAGE_JSON_PATH}/package.json"
PACKAGE_VERSION=$(cat ${PACKAGE_JSON_PATH}/package.json | jq '.version' | tr -d '"')
PACKAGE_BUILD=$(cat ${PACKAGE_JSON_PATH}/package.json | jq '.build' | tr -d '"')

echo "current-version=${PACKAGE_VERSION}.${PACKAGE_BUILD}" >> $GITHUB_OUTPUT
