#!/bin/bash

ssid=" " #Insert your WLAN SSID here
vpn_config_file=" " #/etc/wireguard name of the config file you want to use (without the file extension).

if (( $( iwgetid -r ) == $ssid )) 
then 
    wg-quick down $vpn_config_file
else
    wg-quick up $vpn_config_file
fi
