#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./fasttrack2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Fast-Track in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Fast-Track
ps -ef | grep "fast-track" > /tmp/tmp.txt
if grep "python fast-track.py" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]"  > /dev/null 2>&1
	else
		print "[DOWN]" 
fi
