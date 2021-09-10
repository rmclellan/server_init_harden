#!/bin/bash

choice=5
# Main display
echo "Enter number to select an option"
echo
#echo "1) Add Single User" Maintained by init.sh
#echo "2) Add Users from list" Maintained by init.sh
echo "3) Delete Single User"
echo "4) Delete users from list"
echo

while [ $choice -eq 5 ]; do

read choice

#if [ $choice -eq 1 ] ; then    

#    echo -e "Enter Username"
 #   read user_name
 #   echo -e "Enter Password"
 #   read user_passwd
 #   sudo useradd $user_name -m -p $user_passwd
  #  cat  /etc/passwd 
#else
#    if [ $choice -eq 2 ] ; then
#        x=0
#        created=0
#
#        echo -e "Enter file name for users:"
#        read user_list
#
#        sudo useradd "$user_list" -m -p "$user_list"
#
#        else

            if [ $choice -eq 3 ] ; then
            cat  /etc/passwd 
            echo
            echo -e "User to be deleted:"
            read del_user
            sudo userdel -r $del_user
            cat  /etc/passwd
            echo

                else

        if [ $choice -eq 4 ] ; then
        echo "Not yet finished"


        else
            echo "#####################"
            echo "# Stop being a noob #"
            echo "#####################"
            echo "1) Add Single User"
            echo "2) Add Users from list"
            echo "3) Delete Single User"
            echo "4) Delete users from list"
            echo
                        choice=5
                fi   
        fi
fi
fi
done
