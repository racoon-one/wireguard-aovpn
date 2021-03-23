#!/bin/bash

ssid="R4C00N"
vpn_config_file="home"

if (( $( iwgetid -r ) == $ssid )) 
then 
    wg-quick down $vpn_config_file
else
    wg-quick up $vpn_config_file
fi
