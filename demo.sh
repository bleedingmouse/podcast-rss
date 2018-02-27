#!/bin/bash

ALBUMID="12546834"
RSSFILE="fafaking.xml"
# export PBUUID=""
./ximalaya $ALBUMID > $fafaking.xml
ls
curl -X PUT -F c=@$fafaking.xml https://ptpb.pw/$PBUUID
