#!/usr/bin/env bash
#File: gussinggame.sh


function guessinggame {
count=0
guess=0
for name in *.*
do
	if [[ ! -d $name ]]
	then
		count=$(($count+1))
	fi
done
#echo $count
while [[ $guess -ne 1 ]] 
do
	echo "How many files are in current directory?"
	echo "Can you guess?"
	read files
	if [[ $files -eq $count ]]
	then
		echo "Congratulations your guess is correct"
		let guess=1
	elif [[ $files -gt $(($count+10)) || $files -lt $(($count-10)) ]]
	then
		echo "Sorry, your count is too high"
	else
		echo "Sorry, your guess is incorrect. Please try again"
	fi		
done
}
