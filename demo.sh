#!/bin/bash

ALBUMID="12546834"
RSSFILE="fafaking.xml"
# export PBUUID=""
./ximalaya_linux_amd64 $ALBUMID > $fafaking.xml
ls
curl -X PUT -F c=@$fafaking.xml https://ptpb.pw/$PBUUID
