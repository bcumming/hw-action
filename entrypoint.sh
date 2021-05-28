#!/bin/sh -l

sudo apk -U add git

echo '---------------- ls ----------------'
ls
echo '---------------- pwd ---------------'
pwd
echo '---------------- printenv ----------'
printenv
echo '---------------- /github/home -------'
ls /github/home
echo '---------------- /github/workflow ---'
ls /github/workflow
echo '---------------- /github/workspace --'
ls /github/workspace

echo '---------------- say hello ----------'
echo "hello $1"


echo --- CLONE and CHECKOUT ${GITHUB_REPOSITORY}@${GITHUB_SHA} ---
base_path=`pwd`/repo
git clone https://github.com/${GITHUB_REPOSITORY}.git repo --recursive
cd "${base_path}"
git fetch
git checkout ${GITHUB_SHA}
echo -------------------------------------------------------------

time=$(date)
echo "::set-output name=time::$time"

#GITHUB_WORKFLOW
#GITHUB_HEAD_REF
#GITHUB_BASE_REF
#GITHUB_EVENT_NAME
#GITHUB_SERVER_URL
#GITHUB_API_URL
#GITHUB_GRAPHQL_URL
#GITHUB_WORKSPACE
#GITHUB_ACTION
#GITHUB_EVENT_PATH
#GITHUB_ACTION_REPOSITORY
#GITHUB_ACTION_REF
#GITHUB_PATH
#GITHUB_ENV
