#!/bin/bash
HOST="distributedlife.com"
USER="distribu"
PASS="@#k2Eht\`7j"
LCD="/media/extended/slides"
RCD="/public_html/slides"
lftp -c "set ftp:list-options -a;
open ftp://$USER:$PASS@$HOST;
lcd $LCD;
cd $RCD;
mirror --reverse \
       --delete \
       --verbose \
       --exclude-glob a-dir-to-exclude/ \
       --exclude-glob a-file-to-exclude \
       --exclude-glob a-file-group-to-exclude* \
       --exclude-glob other-files-to-esclude"