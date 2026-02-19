#!/bin/bash

data=$(cat ./file.json | jq)
len=$(echo "$data" | jq 'length')

for ((i = 0; i < len; i++)); do
  curr=$(echo "$data" | jq ".[$i]")
  cd=$(echo "$curr" | jq -r '.cd')

  cd "$cd" || echo "Something wrong"

  targets=$(echo "$curr" | jq '.targets')
  tlen=$(echo "$targets" | jq "length")

  for ((j = 0; j < tlen; j++)); do
    tcurr=$(echo "$targets" | jq ".[$j]")
    target=$(echo "$tcurr" | jq -r '.target')
    directory=$(echo "$tcurr" | jq -r '.directory')

    stow -v -t "$target" "$directory"
  done
done
