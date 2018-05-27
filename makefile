
README.md: 
	touch README.md
	echo "This is a Bash script for gussing the number of files in the current directory" > README.md
	echo "The date and time at which make was run is $date" >> README.md
	echo "The number of lines of code in guessing.sh file is:" >> README.md
	$wc -l guessing.txt >> README.md
