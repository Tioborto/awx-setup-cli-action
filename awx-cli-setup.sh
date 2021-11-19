#!/bin/bash

AWX_LATEST_VERSION=$(git -c 'versionsort.suffix=-' ls-remote --tags --sort='v:refname' https://github.com/ansible/awx '*.*.*' | tail --lines=1  | cut --delimiter='/' --fields=3)

if [[ -z "${AWX_VERSION}" ]]
then
  echo "No specific version specified. Use the last one (${AWX_LATEST_VERSION})"
  AWX_VERSION=${AWX_LATEST_VERSION}
fi

echo "AWX CLI installation"

python -m pip install --upgrade "awxkit==${AWX_VERSION}"

if [[ -n "${AWX_URL}" ]]
then
echo "TOWER_URL=AWX_URL" >> $GITHUB_ENV
fi

if [[ -n "${AWX_TOKEN}" ]]
then
echo "TOWER_TOKEN=AWX_TOKEN" >> $GITHUB_ENV
fi


exit 0
