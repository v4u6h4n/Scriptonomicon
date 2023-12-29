#!/bin/bash

while true; do
    choice=$(whiptail --title "Menu" --menu "Choose an option" 15 60 7 \
    "1" "List of Scripts" \
    "2" "Search" \
    "3" "Help" \
    "4" "About" \
    "5" "Random" \
    "6" "Update" \
    "7" "Quit" 3>&1 1>&2 2>&3)

    case $choice in
        1)
            # Code for List of Scripts
            # Replace this comment with the actual code
            echo "You selected: List of Scripts"
            ;;
        2)
            # Code for Search
            # Replace this comment with the actual code
            echo "You selected: Search"
            ;;
        3)
            # Code for Help
            # Replace this comment with the actual code
            echo "You selected: Help"
            ;;
        4)
            # Code for About
            # Replace this comment with the actual code
            echo "You selected: About"
            ;;
        5)
            # Code for Random
            # Replace this comment with the actual code
            echo "You selected: Random"
            ;;
        6)
            # Code for Update
            # Replace this comment with the actual code
            echo "You selected: Update"
            ;;
        7)
            echo "Exiting."
            exit 0
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
done


#########################################
# Arch | KDE
#########################################

#########################################
# HP Printer
#########################################

echo"
:::::::::::::::::::::::::
:: Created: 2023-12-29 ::
:: Updated: 2023-12-29 ::
:::::::::::::::::::::::::

sudo pacman -S cups cups-pdf print-manager system-config-printer hplip
sudo systemctl enable cups
echo 'A4' >> /etc/papersize
echo 'A4' >> /etc/paperspecs
Restart computer.
"
