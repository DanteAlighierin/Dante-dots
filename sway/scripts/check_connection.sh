#!/bin/bash

check_online=$(wget -q --spider http://bing.com ; echo $?)

[[ $check_online = "0" ]] && echo active

