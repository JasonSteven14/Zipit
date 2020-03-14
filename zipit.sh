DATE=$(date +"%Y-%m-%d-%H-%M-%S")
git status --porcelain | while read modifiedFile; do 
zip -r gitFiles"$DATE".zip ${modifiedFile:2} -x '*.git*' -x 'zipit.sh'; done 