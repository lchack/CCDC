#!/bin/bash

logdir=~/logs
logsrc=/var/log
datecmd="date +"%a_%H_%M""
date=`$datecmd`

if [ "$(id -u)" != "0" ]; then
  echo "Miles tentatively wants you to run this as root. Comment out these lines if you want."
  exit 1
fi

if [ ! -d "$logdir" ]; then
  mkdir -p "$logdir"
fi

if [ -d "$logdir" ]; then
  cd "$logdir"
  cp -R "$logsrc" $date
fi
