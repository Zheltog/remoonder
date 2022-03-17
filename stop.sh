echo "remoonding: stopping..."

PID_FILE_NAME="./pid"
echo "remoonding: getting pid value from file $PID_FILE_NAME"
PID=$(head -1 $PID_FILE_NAME)
echo "remoonding: pid = $PID"

echo "remoonding: killing process..."
kill $PID
echo "removing file with pid..."
rm $PID_FILE_NAME
echo "remoonding: stopped!"
