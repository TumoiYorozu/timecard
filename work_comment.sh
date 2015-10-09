#!/bin/bash

cd ~/github/timecard
CP_PATH=~/Dropbox/timecard/

export LANG=en

if [ ! -e "working" ]; then
    echo -e "\033[40m\033[1;34mWoring!! NOW NOT Working!!! 現在働いていません.\033[0m"
fi

C=`date "+C %Y %m %d %a %H %M %S"`
TT=`date "+CommentLog%Y-%m-%d_%H-%M-%S"
`
if [ "$#" != "0" ]
then
	echo $C' "'$1'"' >> log.txt
	C=$1
else
	CM=$(cat -)
	#CM=`echo ${CM//\\\012/n}`
	echo $C' "'$CM'"' >> log.txt
	C=$CM
fi


cp log.txt $CP_PATH
git add log.txt
git commit -m TT > /dev/null

echo "コメントしました($C)"

