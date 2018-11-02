#!/bin/bash
clear
echo Hello, what is your name?
read answer
echo Its good to meet you, $answer.
echo "Do you want to update? [ Y / n ]."
read u1
if [ "$u1" == "Y" ] || [ "$u1" == "y" ]
then sudo apt update -y
else echo Skipping update...
fi
echo "Do you want to upgrade? [ Y / n ]."
read u2
if [ "$u2" == "Y" ] || [ "$u2" == "y" ]
then sudo apt upgrade -y
else echo Skipping upgrade...
fi
echo "Do you want to auto clean? [ Y / n ]."
read u3
if [ "$u3" == "Y" ] || [ "$u3" == "y" ]
then sudo apt autoclean
else echo Skipping autoclean...
fi
echo "Do you want to auto remove? [ Y / n ]."
read u4
if [ "$u4" == "Y" ] || [ "$u4" == "y" ]
then sudo apt autoremove
else echo Skipping autoremove...
fi
