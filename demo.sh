#!/bin/bash

ALBUMID="14393"
RSSFILE="ydl.xml"
# export PBUUID=""
./lizhi_linux_amd64 $ALBUMID > $ydl.xml
ls
curl -X PUT -F c=@$ydl.xml https://ptpb.pw/$PBUUID
