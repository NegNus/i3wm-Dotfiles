#!/bin/bash

CTHEME=$1
cd /home/$USER/.config/colorschemes/

if [[ ! -d $1 ||  -z $1 ]] ; then
	echo 'Invalid argument'
	exit 1
fi

cfgDir="/home/$USER/.config"
themeDir="/home/$USER/.config/colorschemes/$1"

kitty="kitty/theme.conf"
dunst="dunst/dunstrc.d/theme.conf"
quickshell="quickshell/bar/Theme.qml"
rofi="rofi/theme.rasi"
echo $themeDir

echo
#	kitty
if cp "$themeDir/$kitty" "$cfgDir/$kitty"; then
	echo "kitty SUCCESS"
else
	echo "kitty FAILED!!!! "
fi

echo
#	dunst
if cp "$themeDir/$dunst" "$cfgDir/$dunst"; then
	echo "dunst SUCCESS"
else
	echo "dunst FAILED!!!! "
fi
echo
#	quickshell
if cp "$themeDir/$quickshell" "$cfgDir/$quickshell"; then
	echo "quickshell SUCCESS"
else
	echo "quickshell FAILED!!!! "
fi

echo
#	rofi
if cp "$themeDir/$rofi" "$cfgDir/$rofi"; then
	echo "rofi SUCCESS"
else
	echo "rofi FAILED!!!! "
fi

echo
#	wallpaper
if cp "$themeDir/wallpaper/Walp.png" "/home/$USER/MySetup/Walp.png"; then
	echo "wallpaper SUCCESS"
else
	echo "wallpaper FAILED!!!! "
fi

echo
