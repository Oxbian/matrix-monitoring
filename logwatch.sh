#!/bin/bash
# Scripts to send logwatch log to matrix

#set -x

# Ensure the logwatch folder exist
mkdir -p /var/cache/logwatch

# matrix.sh absolute path
MATRIX_SH_PATH=''

# Variable
today=$(date +%d-%m-%Y)
filename=/var/cache/logwatch/$today-logwatch.html

# Execute
/usr/sbin/logwatch --output file --format html --filename $filename
$MATRIX_SH_PATH -html $(cat $filename)
