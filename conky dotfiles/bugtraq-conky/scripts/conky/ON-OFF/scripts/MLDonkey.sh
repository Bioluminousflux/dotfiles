#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./MLDonkey.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of MLDonkey in the conky
#------------------------------------------------------------------------------------
###################################################################################################
#MLDonkey
ps -ef | grep "ml" > /tmp/tmp.txt
if grep "mldonkey" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]" > /dev/null 2>&1
        else
                print "[DOWN]"
fi
