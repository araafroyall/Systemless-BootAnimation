#!/system/bin/sh
# Script by AraafRoyall
# Do not modify a single word from this script!
# The developer is not responsible for any damage caused by using this module
# •••••••••••••••••••••••••••••••••••••••

ui_print "[*] Initializing Setup...."

# Basic Script

rm -rf /$MODPATH/README.md /$MODPATH/system/media/LICENSE


if ! { mkdir -p "$MODPATH/system/media" || install -d "$MODPATH/system/media"; }; then
  echo "Failed to create directory: $MODPATH/system/media"
else
  ui_print " "
fi


# •••••••••••• Basic Script End ••••••••••••••





# Check if BootAnimation.zip exists
if [ ! -f "/system/media/bootanimation.zip" ]; then
  abort "[!] /system/media/bootanimation.zip not found on your Device ,Exiting..."
fi


# main part of the script
ui_print "[*] Creating systemless BootAnimation.zip"


### &&&&&&&&&&&&&&&&

# Attempt to make bootanimation.zip systemless  by various methods

if ! { 
  cp /system/media/bootanimation.zip /$MODPATH/system/media/ || \
  cat /system/media/bootanimation.zip > /$MODPATH/system/media/bootanimation.zip || \
  dd if=/system/media/bootanimation.zip of=/$MODPATH/system/media/bootanimation.zip; 
}; then
  ui_print "Unable to create systemless bootanimation.zip by any method"
fi



ui_print "[*] Checking installation..."
if [ -f "$MODPATH/system/media/bootanimation zip" ]; then
    ui_print "[*] Systemless bootanimation created"
else
    abort "[!] Something went wrong, exiting..."
fi
fi

#### LAST PART 



ui_print "[*] Additionally providing permissions to make editable by any method"


if command -v chmod > /dev/null 2>&1; then
  chmod 777 /$MODPATH/system/media/bootanimation.zip
else
  ui_print "Failed to Grant Permission, Skipping..."
fi




ui_print "[*] All Done."
    ui_print "[*] Reboot to apply the changes"
    ui_print "[*] Now you can change BootAnimation Systemlessly"
    ui_print "[*] If there is an issue, just disable or uninstall this module and the changes will be reverted"



ui_print "[*] Sucessfully installed"