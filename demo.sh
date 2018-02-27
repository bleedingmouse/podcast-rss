#!/bin/bash

ALBUMID="14393"
RSSFILE="ydl.xml"
# export PBUUID=""
./lizhi $ALBUMID > $ydl.xml
ls
curl -X PUT -F c=@$ydl.xml https://ptpb.pw/$PBUUID
