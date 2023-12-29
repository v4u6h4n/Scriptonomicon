#!/bin/bash

while true; do
    menu_main=$(whiptail --title "Scriptonomicon" --menu "Main Menu" 15 60 7 \
    "1" "Start" \
    "2" "Search" \
    "3" "About" \
    "4" "Quit" 3>&1 1>&2 2>&3)

    case $menu_main in
        1)
            menu_distro=$(whiptail --title "Scriptonomicon" --menu "Linux Distributions" 15 60 4 \
            "1" "Arch" \
            "2" "Debian" \
            "3" "Back" 3>&1 1>&2 2>&3)

            case $menu_distro in
                1)
                    menu_arch=$(whiptail --title "Scriptonomicon" --menu "Desktop Environments" 15 60 4 \
                    "1" "None" \
                    "2" "Gnome" \
                    "3" "Hyprland" \
                    "4" "KDE" \
                    "5" "Back" 3>&1 1>&2 2>&3)

                    case $menu_arch in
                        4)
                            menu_arch_kde=$(whiptail --title "Scriptonomicon" --menu "KDE Plasma" 15 60 4 \
                            "1" "Install" \
                            "2" "Devices" \
                            "3" "Networking" \
                            "4" "Virtualization" \
                            "5" "Back" 3>&1 1>&2 2>&3)

                            case $menu_arch_kde in
                                1)
                                    echo "Installing KDE Plasma"
                                    ;;
                                2)
                                    menu_arch_kde_devices=$(whiptail --title "Scriptonomicon" --menu "Devices" 15 60 4 \
                                    "1" "Printers" \
                                    "2" "Storage Devices" \
                                    "3" "Back" 3>&1 1>&2 2>&3)

                                    case $menu_arch_kde_devices in
                                        1)
                                            menu_arch_kde_printers=$(whiptail --title "Scriptonomicon" --menu "Printers" 15 60 2 \
                                            "1" "HP" \
                                            "2" "Back" 3>&1 1>&2 2>&3)

                                            case $menu_arch_kde_printers in
                                                1)
                                                    echo "
                                                    # Created: 2023-12-29
                                                    # Updated: 2023-12-29

                                                    # Install packages.
                                                    sudo pacman -S cups cups-pdf print-manager system-config-printer hplip
                                                    # Install cups service.
                                                    sudo systemctl enable cups
                                                    # Replace 'size' with your preferred paper size(s).
                                                    echo 'size' >> /etc/papersize
                                                    echo 'size' >> /etc/paperspecs
                                                    # Restart computer.
                                                    "
                                                    ;;
                                                2)
                                                    ;;
                                                *)
                                                    ;;
                                            esac
                                            ;;
                                        2)
                                            ;;
                                        3)
                                            ;;
                                        *)
                                            ;;
                                    esac
                                    ;;
                                3)
                                    ;;
                                4)
                                    ;;
                                5)
                                    ;;
                                *)
                                    echo "Invalid option"
                                    ;;
                            esac
                            ;;
                        5)
                            ;;
                        *)
                            ;;
                    esac
                    ;;
                3)
                    ;;
                *)
                    ;;
            esac
            ;;
        4)
            echo "Exiting."
            exit 0
            ;;
        *)
            ;;
    esac
done
