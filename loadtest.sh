#!/bin/bash
# ffmpeg -i http://192.168.3.23/live -r 15 http://188.226.129.169:8090/destaat.ffm
#
i=1
while [ $i -le 300 ]
do
  echo "Process \"$i\" started";
  curl http://188.226.129.169:8090/MK8E.mjpg -s > /dev/null 2>&1 & pid=$!
  # sleep 1 & pid=$!
  PID_LIST+=" $pid";
  i=$(( $i + 1 ))
done

trap "kill ${PID_LIST}" SIGINT

echo "Parallel processes have started";

wait $PID_LIST

echo
echo "All processes have completed";
