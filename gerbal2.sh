#!/bin/bash

# Global Varibles
TEMPDIR="/tmp/"
DATE_FORMAT="%Y%m%d"
WEEK=`date +%V`
CMDLIST="`date -u "+"$DATE_FORMAT" @%H%MUTC"` W$WEEK =>todo cmd1 cmd2 ?>"
VERSION="v0.9.4.20090306"

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

groups | grep -q eng && ENG="yes"

if [ ! "$ENG" = "yes" ]; then
	gerbal2
fi

echo "Gerbal Commands"


while true
do
cmd
done


###############################################
