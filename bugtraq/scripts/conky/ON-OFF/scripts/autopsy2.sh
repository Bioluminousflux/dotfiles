#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./autopsy.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq Team
# - Description: This script compiles the status of Autopsy
#------------------------------------------------------------------------------------
###################################################################################################
#Autopsy
ps -ef | grep "autopsy" > /tmp/tmp.txt
if grep "/usr/bin/autopsy" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]"
        else
                print "[DOWN]"  > /dev/null 2>&1
fi
