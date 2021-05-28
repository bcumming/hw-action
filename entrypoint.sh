#!/bin/sh -l

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

echo "hello $1"
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
