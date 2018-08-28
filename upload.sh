#!/bin/bash

# requires curl and jq installed

FILE_NAME=$G_FILE_NAME
CHANNEL_ID=$G_CHANNEL_ID
ACCESS_TOKEN=$G_ACCESS_TOKEN
FILES_URL=$G_FILES_URL
POSTS_URL=$G_POSTS_URL
MESSAGE=$G_MESSAGE

FILE_ID=$(curl -F 'files=@'"$FILE_NAME" -F 'channel_id='"$CHANNEL_ID" --header 'Authorization: Bearer '"$ACCESS_TOKEN" $FILES_URL | jq -r '.file_infos[0].id')
curl -s -d '{"file_ids":["'"$FILE_ID"'"], "message":"'"$MESSAGE"'", "channel_id":"'"$CHANNEL_ID"'"}' --header 'Authorization: Bearer '"$ACCESS_TOKEN" $POSTS_URL
