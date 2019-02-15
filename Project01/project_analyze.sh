#!/bin/bash

cd ~/CS1XA3/Project01

echo "Welcome to the digital world"
sleep 1s
echo "What should I call you?"

read user

echo "Nice to meet you (Monsieur/Madame.) $user"
sleep 1s
echo "So I have a few script options available for you"
echo "Here they are:"
sleep 0.3s
echo "1. Create a TODO Log (Under Construction)"
sleep 0.2s
echo "2. Compile Error Log (Under Construction)"
sleep 0.2s
echo "3. Merge Log"
sleep 0.2s
echo "4. File Type Count (Under Construction)"
sleep 0.2s
echo "5. Delete Temporary Files (Under Construction)"
sleep 0.2s
echo "6. Find Last Working File (Under Construction)"

sleep 0.2s

echo "What job would Monsieur/Madame $user like me to do for them?? (Please use the index numbers)"
sleep 0.2s

read script
sleep 0.1s

if [ $script -eq 3 ]; then
	echo "Very Well Monsieur/Madame $user"
	echo 'Give me a second.... Your output will be found in a file named merge.log'
	git log -i --oneline --grep="merge" | cut -d' ' -f1 > merge.log
else
	echo "Its Broken"
fi
