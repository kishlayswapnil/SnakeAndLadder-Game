#!/bin/bash -x
echo "Welcome To Snake And Ladder Game."

function snakeLadder() {
	#Constants Declared.
	STARTPOSITION=0
	WINPOSITION=100
	COUNT=0

	#Variables declared.
	position=0
	position=$currentPosition

	#Logic for the program.
	while [[ $position -ne $WINPOSITION ]]
	do
		randomRoll=$((RANDOM%6+1))
		randomOption=$((RANDOM%3))
		NOPLAY=0
		LADDER=1
		SNAKE=2
		#CASE STATEMENTS FOR CHECKING CONDITION
		case $randomOption in
			$NOPLAY)
				position=$position
				echo "No play for the user"
			;;
			$LADDER)
				position=$(($position+$randomRoll))
				if [ $position -gt $WINPOSITION ]
				then
					position=$currentPosition
				fi
				echo "Position of the user is "$position
			;;
			$SNAKE)
				position=$(($position-$randomRoll))
				echo "Position after bitting is "$position
				if [ $position -lt $STARTPOSITION ]
				then
					position=$STARTPOSITION
				fi
				if [ $position -lt $WINPOSITION ]
				then
					currentPosition=$position
				fi
				echo "$position"
			;;
		esac
		echo " "
		((COUNT++))
		echo "Position of a Dice is "$COUNT
	done
	echo "User win"$position
	echo "For winning Game $COUNT times dice rolled"
}

#Calling Function.
snakeLadder
player1=$COUNT
	echo "Player1 Count "$player1
snakeLadder
player2=$COUNT
	echo "Player2 Count "$player2
if [ $player1 -lt $player2 ]
then
	echo "Player 1 is Winner"
else
	echo "Player 2 is Winner"
fi
