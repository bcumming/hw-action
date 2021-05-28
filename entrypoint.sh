#!/bin/sh -l

echo '---------------- ls ---------------- '
ls
echo '---------------- pwd --------------- '
pwd
echo '---------------- printenv ---------- '
printenv
echo '---------------- GITHUB_WORKSPACE --'
echo $GITHUB_WORKSPACE
echo '---------------- GITHUB_ENV --------'
echo $GITHUB_ENV

echo "hello $1"
time=$(date)
echo "::set-output name=time::$time"
