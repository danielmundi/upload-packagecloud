#!/bin/bash

set -e

echo "Install dependencies"
sudo gem install package_cloud

echo "PACKAGECLOUD_REPO=${PACKAGECLOUD_REPO}"
echo "PACKAGECLOUD_DISTRIB=${PACKAGECLOUD_DISTRIB}"
echo "PACKAGE_NAME=${PACKAGE_NAME}"

UPLOAD_PATH="${PACKAGECLOUD_USERNAME}/${PACKAGECLOUD_REPO}"
if [ -n "${PACKAGECLOUD_DISTRIB}" ]; then
    UPLOAD_PATH="${UPLOAD_PATH}/${PACKAGECLOUD_DISTRIB}"
fi

echo "Deploying package: ${PACKAGE_NAME}"
echo "To repository: ${UPLOAD_PATH}"
package_cloud push ${UPLOAD_PATH} ${PACKAGE_NAME}
