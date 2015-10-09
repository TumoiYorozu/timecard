#!/bin/bash

cd ~/github/timecard
CP_PATH=~/Dropbox/timecard/

export LANG=en

if [ ! -e "working" ]; then
    echo -e "\033[40m\033[1;31mError!! NOW NOT Working!!! 現在働いていません.\033[0m"
	exit 1
fi

if [ "$#" != "0" ]
then
	C=`date "+C %Y %m %d %a %H %M %S"`
	echo $C" "$1 >> log.txt
fi

T=`date "+E %Y %m %d %a %H %M %S"`
TT=`date "+EndLog%Y-%m-%d_%H-%M-%S"`

echo $T >> log.txt

cp log.txt $CP_PATH
git add log.txt
git commit -m $TT > /dev/null

ST=`cat working`
ET=`date +%s`
WTM=`expr \( $ET - $ST \) / 60`
WTS=`expr \( $ET - $ST \) % 60`
echo "お疲れ様でした。$WTM分$WTS秒働きました！"

rm "working"
