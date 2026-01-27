#!/bin/bash

log="log.txt"
touch "${log}"
echo "Program starts at $(date -u +%Y-%m-%d" "%H:%M:%S)" >>"${log}"

FILE="./file.txt"
needToCd=0
while read -r LINE; do
  if [ "$LINE" = "" ]; then
    needToCd=1
  else
    if [ "$needToCd" = 1 ]; then
      needToCd=0
      cd "$LINE"
    else
      IFS=',' read -ra values <<<"$LINE"
      stow -v -t "${values[1]}" "${values[0]}" &>>"$log"
    fi
  fi
done <"$FILE"

printf "Program ends at %s\n\n" "$(date -u +%Y-%m-%d" "%H:%M:%S)" >>"${log}"
exit
