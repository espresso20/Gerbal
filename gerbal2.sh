#!/bin/bash
#creating basic menu driven options for commands
#more for my curiostity then for any practical reason


# Global Varibles
DATE_FORMAT="%Y%m%d"
WEEK=`date +%V`
CMDLIST="`date -u "+"$DATE_FORMAT" @%H%MUTC"` W$WEEK =>pinghost todo cmd1 cmd2 ?>"
echo VERSION="v0.9.4.20090306"

##########################################################

# Lists and such


#main Menu

menu ()

{
tput clear

echo "Gerbal 2 menu"
echo "

==========================================================================================================

	com1		somecommand explanation
	com2		somecommand explanation
	todo		list out todos
	pinghost	pings given host
==========================================================================================================
"

grep "# cmdname=" /usr/local/bin/gerbal2 -A2
}

todo ()
{
echo "
	this is basic to do area
	can list out any info needed

"

}

#######
# cmdname="ph"
pinghost()
#ping given host
####################
echo "enter ip you wish to ping!"
    echo
    read PING
    echo
    ping $PING -c 5

cmd;;





#still working this part
#groups | grep -q eng && ENG="yes"
#if [ ! "$ENG" = "yes" ]; then	
#
#	gerbal2
#fi
#
#echo "Gerbal Commands"
#
#
#while true
#do
#cmd
#done


###############################################
