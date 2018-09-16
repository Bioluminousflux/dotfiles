#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./virtual.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del virtual box en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Virtualbox
if /etc/init.d/vboxdrv status | grep "not loaded" > /dev/null 2>&1
 then
  print "[DOWN]"
 elif /etc/init.d/vboxdrv status | grep "are" > /dev/null 2>&1
  then
   print "UP" > /dev/null 2>&1
    else
   print "[N.I.]"
fi