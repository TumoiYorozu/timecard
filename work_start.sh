#!/bin/bash

cd ~/github/timecard
CP_PATH=~/Dropbox/timecard/

export LANG=en

if [ -e "working" ]; then
    # 存在する場合
	echo -e "\033[40m\033[1;31mError!! NOW Working!!! 現在働いている状態です.\033[0m"
	exit 1
fi

T=`date "+S %Y %m %d %a %H %M %S"`
TT=`date "+StartLog%Y-%m-%d_%H-%M-%S"`


echo $T >> log.txt
if [ "$#" != "0" ]
then
	C=`date "+C %Y %m %d %a %H %M %S"`
	echo $C" "$1 >> log.txt
fi
cp log.txt $CP_PATH
git add log.txt
git commit -m TT > /dev/null

NT=`date "+%m月%d日 %H:%M:%S(%s)"`

echo "お仕事開始！ 現在$NT"

date +%s > "working"
