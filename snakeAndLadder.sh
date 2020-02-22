#!/bin/bash -x
echo "Welcome To Snake And Ladder Game."

#Constants Declared.
STARTPOSITION=0
WINPOSITION=100

#Varriables Declared.
position=0

#CHECKS THE NUMBER BETWEEN 1-6
randomRoll=$((RANDOM%6+1))
