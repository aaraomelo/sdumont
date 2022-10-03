apt-get update
apt-get install -y expect openssh-client rsync 
apt-get install -y vpnc network-manager-vpnc
apt-get install -y vpnc network-manager-vpnc-gnome
source ./vpn/connect.sh
expect ./install/install.exp $USER_NAME $HOST_NAME $REMOTE_PATH
expect ./vpn/disconnect.exp