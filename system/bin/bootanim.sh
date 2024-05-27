# This script can dynamically change Bootanimation Systemlessly
# Created by : AraafRoyall
# Please Don't modify anything from this script

# •••••••••••••••••••••••••••••••••••

if [ ! -f /data/adb/modules/SystemLessBootAnimation/system/media/bootanimation.zip ]; then echo "Systemless BootAnimation module is not Properly Installed, Exiting...."; exit 1; fi


echo "Enter the Path of New Bootanimation zip"
echo " "

read path

echo "Checking Zip File"

if [ ! -f $path ]; then echo "The input file is not a valid Bootanimation zip , Exiting...."; exit 1; fi


echo "Installing New bootanimation Systemlessly


# Work in progress , check later
