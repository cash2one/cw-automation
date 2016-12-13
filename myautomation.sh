#!/usr/bin/env bash
##!/bin/bash
#author cuijun 20161128
cd jw_testcase
ls -lat
python testsuit_interface_sample.py
echo "the jw-automation interface testing has been finished."

#yum -y install MySQL-python
#yum -y install mysql-devel
#easy_install-2.7 MySQL-python
#pip install MySQL-python

#docker pull
#docker images
#docker run

#docker ps
#docker exec -it 40c330755e61 /bin/bash


gup() {
  local br
  br=`git branch 2> /dev/null|\\grep '^*'|sed -e 's/..//;s/\\n//'`
  tainted=`git status --porcelain | \\grep -v '^\\?\\?'`
  if [[ $br == master ]]; then
    if [[ $tainted == '' ]]; then
      echo git stash
      git stash
    fi
    echo git fetch
    git fetch
    echo git rebase FETCH_HEAD $br
    git rebase FETCH_HEAD $br
  else
    if [[ -n $br ]]; then
      if [[ $tainted == '' ]]; then
        echo git stash
        git stash
      fi
      echo git pull --rebase origin $br
      git pull --rebase origin $br
    else
      echo seems not in any branch
    fi
  fi
}


