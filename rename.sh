#!/bin/sh

after=`openssl rand -base64 12 | fold -w 10 | head -1`
echo $after

`ls | sed -e s/\.jpg// | awk '{print $1 ".txt " $after ".jpg"}' | xargs -n 2 mv`
