if [ ! "`whoami`" = "root" ]
then
    echo "Please run script as root."
    exit 1
else
	echo "Ex: ./monitor-mode {INTERFACE}"
	airmon-ng check kill
	airmon-ng start $1
	airodump-ng $1
fi
