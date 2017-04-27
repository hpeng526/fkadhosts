#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

wget -O yhosts –no-check-certificate https://raw.githubusercontent.com/vokins/yhosts/master/hosts

awk '/^127.0.0.1/{if ($2!="localhost" && $2!="XiaoQiang") print "DOMAIN-SUFFIX,"$2",REJECT"}' $DIR/yhosts >> $DIR/chosts.conf