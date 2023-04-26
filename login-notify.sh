#!/bin/sh

# Absolute path of the matrix.sh file
MATRIX_PATH=''

if [ "$PAM_TYPE" != "close_session" ]; then
	host="$(hostname)"
    message="SSH Login: $PAM_USER from $PAM_RHOST on $host"
	$MATRIX_PATH -s $message
fi

