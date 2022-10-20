echo "Ex: ./monitor-mode {INTERFACE}"
airmon-ng check kill
airmon-ng start $1
airodump-ng $1
