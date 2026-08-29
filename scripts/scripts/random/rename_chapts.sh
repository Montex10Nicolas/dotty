#!/usr/bin/env bash

# Usage: ./rename-chapters.sh /path/to/folder

folder="$1"

if [[ -z "$folder" || ! -d "$folder" ]]; then
  echo "Usage: $0 <folder>"
  exit 1
fi

for file in "$folder"/c*; do
  [[ -f "$file" ]] || continue

  filename=$(basename -- "$file")

  if [[ "$filename" =~ ^c([0-9]+)(\..+)?$ ]]; then
    number="${BASH_REMATCH[1]}"
    extension="${BASH_REMATCH[2]}"

    new_name="Chapter $number$extension"
    new_file="$folder/$new_name"

    if [[ -e "$new_file" ]]; then
      echo "Skipping '$filename': '$new_name' already exists"
      continue
    fi

    mv -- "$file" "$new_file"
    echo "Renamed '$filename' to '$new_name'"
  fi
done
