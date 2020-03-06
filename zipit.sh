git status --porcelain | while read modifiedFile; do 
zip  -r prueba.zip ${modifiedFile:2} -x '*.git*''zipit.sh'; done