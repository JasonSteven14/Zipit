DATE=$(date +"%Y%m%d%H%M%S")
NAMEPROJECT=$(basename $(git rev-parse --show-toplevel))
NAME="$NAMEPROJECT-$DATE"
if [ -n "$1" ]
    then
        NAME="$1"
fi
git status --porcelain | while read modifiedFile; do 
zip -r "$NAME".zip ${modifiedFile:2} -x '*.git*' -x 'zipit.sh'; done 
