#!/bin/bash



#print
#generate random num
#while loop
#read from user
#if block
#increment var

function guess() {
	echo "Please guess the number from 1-100 inclusively"

	secretNum=$(( 1 + RANDOM%100 ))

	echo $secretNum


	steps=1

	while [[ 0 -eq 0 ]];do

		read nextGuess

		if [[ $nextGuess -eq $secretNum ]]; then
			echo "Wawwaweewa. You've done it in $steps steps"
			exit
		elif [[ $nextGuess -gt $secretNum ]]; then
			echo "My number is lower";
		else
			echo "My number is bigger"
		fi

		((steps++))
	done
}

guess
