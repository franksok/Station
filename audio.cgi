#!/bin/sh
echo "Content-type: text/plain"
echo ""

# Extracting the audio count from the csv file.
AUDIO_COUNT=$(awk -F, 'NR==2 {print $1}' /home/ec2-user/WRKDIR/output.csv)

echo "Hello from $(hostname), [$AUDIO_COUNT] Audio files."