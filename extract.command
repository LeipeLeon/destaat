#!/usr/bin/env bash

DAY=${1}
MONTH=2017-10
OUTPUTFILE=staat.${MONTH}-${DAY}

cd out

function err() {
  echo -e "\x1B[41;37;1m\n\n  ${1}\n\n\x1B[0m"
}
function msg() {
  echo -e "\x1B[42;30;1m\n\n  ${1}\n\x1B[0m"
}

FILE_COUNT=`ls -l ~/Downloads/message_export_${MONTH}* | wc -l`

if (( ${FILE_COUNT} > 1 )); then
  err "Duplicate Files! (${MONTH})"
  exit 1
fi

msg "Exporting ${DAY}"

if [ -f ~/Downloads/message_export_${MONTH}.csv ] ; then
  cat ~/Downloads/message_export_${MONTH}.csv | grep MO | grep "${MONTH}-${DAY}" | cut -d";" -f 3 | grep -v originator | sort -u -n | split -l 300 - ${OUTPUTFILE}
else
  err "No Input!"
  exit 1
fi

if ls ${OUTPUTFILE}* 1> /dev/null 2>&1; then
  msg "`ls -l ${OUTPUTFILE}* | wc -l` File(s)"
else
  err "No Output!"
fi
