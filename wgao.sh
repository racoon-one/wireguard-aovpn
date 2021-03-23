#!/bin/bash

ssid=" "
vpn_config_file=" "

if (( $( iwgetid -r ) == $ssid )) 
then 
    wg-quick down $vpn_config_file
else
    wg-quick up $vpn_config_file
fi
