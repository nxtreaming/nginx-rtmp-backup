# configuration file for nginx-rtmp-switch

# [true|false] defines whether or not stream changes back to main if it recovers
# with true it will change back, with false -- stay on backup stream
MAIN_STREAM_PRIORITY="true"

# [gst|avconv|ffmpeg] defines which program will push your stream
# use ffmpeg if not sure
RUNNER="ffmpeg"

# nginx rtmp application name for main stream
MAIN_STREAM_APPNAME="smain"

# nginx rtmp application name for backup stream
BACKUP_STREAM_APPNAME="sback"

# nginx rtmp application name for final stream
OUT_STREAM_APPNAME="sout"

# username for nginx worker processes
NGINX_USER="www"
# group for NGINX_USER
NGINX_GROUP="www"

# Following parameters are technical. Please, DO NOT CHANGE them.
# If changed anyway, run init.sh again.

# app name
CURRENT_APPLICATION_NAME="nginx-rtmp-switch"

# folder where pidfiles are stored
PIDS_FOLDER="/run/$CURRENT_APPLICATION_NAME"

# folder where logfiles are stored
LOGS_FOLDER="/var/log/$CURRENT_APPLICATION_NAME"
