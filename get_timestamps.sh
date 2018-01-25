#!/bin/bash

#Clear the output file
echo > output.txt

file=$1
while IFS= read -r line
do
  RESPONSE=$(curl -s -X GET $line)
  RESPONSE=${RESPONSE##*window._sharedData = }
  RESPONSE=${RESPONSE%%;</script>*}
  TIMESTAMP=$(echo $RESPONSE | jq '.entry_data.PostPage[0].graphql.shortcode_media.taken_at_timestamp')
  TIMESTAMP=$(date -r $TIMESTAMP +%m-%d-%Y)
  echo $TIMESTAMP
  echo $TIMESTAMP >> output.txt
done <"$file"
