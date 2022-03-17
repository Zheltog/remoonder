SLEEP_TIME_FILE_NAME="./sleep"
echo "remoonding: getting sleep time value from file $SLEEP_TIME_FILE_NAME"
SLEEP_TIME=$(head -1 $SLEEP_TIME_FILE_NAME)
echo "remoonding: sleep time = $SLEEP_TIME"

MODE_FILE_NAME="./mode"
echo "remoonding: getting mode value from file $MODE_FILE_NAME"
MODE=$(head -1 $MODE_FILE_NAME)
echo "remoonding: mode = $MODE"

PHRASE_FILE_NAME="./phrase"
echo "remoonding: getting phrase to say from file $PHRASE_FILE_NAME"
PHRASE=$(head -1 $PHRASE_FILE_NAME)
echo "remoonding: phrase to say = $PHRASE"

echo "remoonding: program is running now, you can close that window and wait for cow to appear"
while true
do
  sleep $SLEEP_TIME
  gnome-terminal --full-screen --command="bash -c 'cowsay -f $MODE \"$PHRASE\"; sleep 5; exit; $SHELL'"
done
