#!/bin/bash
# scriptname: /usr/local/sbin/directory-long-index.sh
# 
# the directory_root without slash at the end:
WEB=/var/www/
#reacheable url from inside the server:
URL=http://localhost

P=$(pwd|sed "s|$WEB/||")
echo "download $URL/$P/ to index.html"
curl "$URL/$P/" -o index.html
sed -i 's|href="\(.*\)".*</a>|style="display:inline-block;min-width:500px" href="\1">\1</a>|' index.html