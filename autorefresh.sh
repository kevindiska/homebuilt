#!/bin/bash
fg_black="$(tput setaf 0)"
fg_red="$(tput setaf 1)"
fg_green="$(tput setaf 2)"
fg_yellow="$(tput setaf 3)"
fg_blue="$(tput setaf 4)"
fg_magenta="$(tput setaf 5)"
fg_cyan="$(tput setaf 6)"
fg_white="$(tput setaf 7)"
reset="$(tput sgr0)"
counter=000
string1="$(date +'%T')"

while true
do
	string2="$(date +'%T')"
	Start=$(date -u -d "$string1" +"%s")
	Process=$(date -u -d "$string2" +"%s")
	wget -O/dev/null detectportal.firefox.com/success.txt
	((counter++)); echo -e "Try Number : ${fg_green}$counter${reset}"; date -u -d "0 $Process sec - $Start sec" +"%H:%M:%S"
	sleep 10s
done
