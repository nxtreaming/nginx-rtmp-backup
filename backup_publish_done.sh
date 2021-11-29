#!/bin/sh

# This script runs if a backup stream stops publishing to nginx

set -euf

DIR="$(dirname "$0")"
. "$DIR/config.sh"
. "$DIR/utils.sh" # parse_argv, kill

exec > "$LOGS_FOLDER/scripts/main_publish.log" 2>&1

parse_argv "$@"

kill backup

# switch to main stream when priority is not main stream
if is_running main;
then
	true
else
	push_stream main
fi

exit 0
