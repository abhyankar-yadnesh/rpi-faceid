#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE=""
TITLE="Facial recognition"
MENU="Choose one of the following options:"

OPTIONS=(1 "Add new user"
         2 "Scan mode"
         3 "Quit")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            echo "adding new user"
            sudo bash new_user.sh
            ;;
        2)
            echo "Scan mode"
            sudo bash run_program.sh
            ;;
        3)
            exit
            ;;
esac