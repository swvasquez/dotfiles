#!/bin/bash

# This script uses gsettings to add custom keybinds to dconf. Make sure that
# GIO_EXTRA_MODULES=/usr/lib/x86_64-linux-gnu/gio/modules/ is set. dconf
# distinguishes between two types of shortcuts: keybinds that interact with the
# window manager and keybinds that perform media related tasks such playback,
# volume control, and screenshotting. Custom keybinds belong to the latter class
# as well. To add/modify a shortuct, add "<command_name> '<command>' <keybind>"
# to the appropriate shorcuts list below. Make sure to include the single and
# double quotation marks.

shortcuts=(
    "test_cmd 'gedit' <Ctrl>g"
    "test_cmd 'gedit' <Ctrl>d"
    "test_cmd 'nautilus' <Ctrl>n"
    "test_cmd 'nautilus' <Ctrl>;"
)

schema=org.gnome.settings-daemon.plugins.media-keys

custom_num=0
mappings=()
for shortcut in "${shortcuts[@]}"; do
    mappings+=("/org/gnome/settings-daemon/plugins/media-keys/\
    custom-keybindings/custom${custom_num}/")
    custom_num=$((custom_num + 1))
done 
echo $mappings
# mappings_str=$(IFS=, ; echo "[${mappings[*]}]")
# gsettings set "${schema}" custom-keybindings $mappings_str
# printf "Creating custom keybind slots: \n${mappings_str}"

# custom_num=0
# for shortcut in "${shortcuts[@]}"; do
#     name=$(echo $shortcut | awk '{print $1}')
#     command=$(echo $shortcut | awk '{print $2}')
#     binding=$(echo $shortcut | awk '{print $3}')
   
#     mapping='/org/gnome/settings-daemon/plugins/media-keys/\
#     custom-keybindings/custom${custom_num}/'
#     gsettings set "${schema}.custom-keybinding:${mapping}" name $name
#     gsettings set "${schema}.custom-keybinding:${mapping}" command $command
#     gsettings set "${schema}.custom-keybinding:${mapping}" binding $binding
#     custom_num=$((custom_num + 1))
# done   
