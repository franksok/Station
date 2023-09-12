#!/bin/bash

BUCKET_NAME="test-answer-francisco-garcia"
OUTPUT_FILE="output.csv"

AUDIO_COUNT=$(aws s3 ls s3://$BUCKET_NAME/ --recursive | grep -E "\.mp3$|\.wav$|\.m4a$" | wc -l)
VIDEO_COUNT=$(aws s3 ls s3://$BUCKET_NAME/ --recursive | grep -E "\.mp4$|\.avi$|\.mov$" | wc -l)
IMAGE_COUNT=$(aws s3 ls s3://$BUCKET_NAME/ --recursive | grep -E "\.jpg$|\.png$|\.jpeg$" | wc -l)

{
    echo "Audio,Video,Image"
    echo "$AUDIO_COUNT,$VIDEO_COUNT,$IMAGE_COUNT"
} > $OUTPUT_FILE
