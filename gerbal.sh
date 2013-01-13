#!/bin/bash
#Display colorized information output
function g1() {
        COLOR='\033[01;33m'     # bold yellow
        RESET='\033[00;00m'     # normal white
        MESSAGE=${@:-"${RESET}Hold PLEASE !!"}
        echo -e "${COLOR}${MESSAGE}${RESET}"
}
# Display colorized warning output
function g2() {
        COLOR='\033[01;31m'     # bold red
        RESET='\033[00;00m'     # normal white
        MESSAGE=${@:-"${RESET}ALL DONE!!"}
        echo -e "${COLOR}${MESSAGE}${RESET}"
}
# Distplays colorized warning output
function g3() {
        COLOR='\e[1;32m'        #Bold Green
        RESET='\033[00;00m'     # normal white
        MESSAGE=${@:-"${RESET}ALL DONE!!"}
        echo -e "${COLOR}${MESSAGE}${RESET}"
}
# Distplays colorized warning output
function g4() {
        COLOR='\e[1;32m"'          #Bold Blue
        RESET='\033[00;00m'     #normal white
        MESSAGE=${@:-"${RESET}ALL DONE!!"}
        echo -e "${COLOR}${MESSAGE}${RESET}"
}

# Displays colorized wrning output.
#This keeps a uninformed user from wipeing a good log out.
#yes to continue no to exit if not sure
function ConfirmOrExit() {
        while true
                do
                        g2 -n "If your Finished Please confirm for Continuing or Exiting! (y or n) :"
                        read CONFIRM
                        case $CONFIRM in
                        y|Y|YES|yes|Yes) break ;;
                        n|N|no|NO|No)
                        g1 "The Gerbal finds no intrest in your puny attempts!" $CONFIRM
                        exit
                        ;;
                        *) g2 "Please enter only y or n to Please the Gerbal"
                        esac
                        done
                        g1 "Gerbal likes you! $CONFIRM. Continuing ..."
}


#welcome message
g3 "Welcome to Gerbal!, a script writen to make YOUR life easier."
sleep 3
g3 "This script will help you to do task on the server with some automation."
sleep 3
g3 "Keep in mind it only does what you TELL, it to do ;) "
ConfirmOrExit
#start with checking uptime!
sleep 3
g4 "Checking server uptime..."
sleep 1
uptime
sleep 1
ConfirmOrExit

g4 "Checking free memory..."
sleep 1
free -t -m
ConfirmOrExit

sleep 2
g4 "Checking Memory Usage"
sleep 1
egrep -h --color 'Mem|Cache|Swap' /proc/meminfo
sleep 3
g3 "all done with memory checks!"
sleep 2
ConfirmOrExit

g4 "Checking server disk space"
sleep 2
df -h
ConfirmOrExit

sleep 2
g4 "Checking disk usage for /home directories"
sleep 1
g1 "Disk useage on minecraft"
du -sh /home/minecraft
sleep 2
g1 "Disk useage on root"
du -sh /root
sleep 2
g1 "Disk useage on bobmarker"
du -sh /home/bobmarker
sleep 2
g1 "Disk useage on monkey"
du -sh /home/monkey
sleep 2
g1 "Disk useage on andrewph"
du -sh /home/andrewph
sleep 2
g4 "disk useage print out done"
sleep 1
g4 "read your profile's Disk useage printout, if it seems overly large, please clean up your home dir ;) thx!"
ConfirmOrExit

sleep 2
g4 "checking what ports are open on server!"
sleep 1
netstat -tulpn
sleep 3
g4 "watch for the Minecraft ports (25565, 25566, ect) and ssh ports (22)."
sleep 2
ConfirmOrExit

sleep 2
g4 "Checking on ping to outside"
sleep 2
ping www.google.com -c 5
sleep 2
ConfirmOrExit

g4 "checking if westin server answers"
sleep 2
ping westin.aero-mmo.org -c 5
sleep 2
ConfirmOrExit

g4 "OK now for the fun stuff!!"
sleep 2
g3 "running updates to server deb packages"
sleep 2
apt-get update
sleep 3
g3 "running upgrades to server systems from deb packages"
sleep 2
apt-get upgrade -y
sleep 3
g3 "running aptitude for checksum"
sleep 2
aptitude update
sleep 3
g3 "updating packages on aptitued recomendation"
aptitude upgrade -y
sleep 4
ConfirmOrExit