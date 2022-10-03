source ./vpn/connect.sh
expect ./notebook/notebook.exp $USER_NAME $HOST_NAME $LOCAL_PORT $REMOTE_PATH
expect ./vpn/disconnect.exp
