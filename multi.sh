#!/bin/bash


ALBUMID=([0]='10463703' [1]='14393')
RSSFILE=([0]='ffk.xml' [1]='ydl.xml')
GRABBER="lizhi"

wget -q https://github.com/bleedingmouse/podcast-rss/releases/download/3zhua/$GRABBER
chmod +x ./$GRABBER

len=${#ALBUMID[@]}

for ((i=0;i<$len;i++));do
        ./$GRABBER ${ALBUMID[$i]} > ${RSSFILE[$i]}
done

ls

for ((i=0;i<$len;i++));do
        UUID=PBUUID${i}
        eval tmp=\$$UUID
        curl -X PUT -F c=@${RSSFILE[i]} https://ptpb.pw/$tmp
done
