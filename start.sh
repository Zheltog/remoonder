REMOONDING_FILE_NAME="./remoonding.sh"
echo "remoonding: starting..."
$REMOONDING_FILE_NAME &
echo "remoonding: pid = $!, saving to file 'pid'"
echo "$!" > pid
