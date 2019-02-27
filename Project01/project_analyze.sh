#!/bin/bash

echo "Welcome to the digital world"
sleep 1s
echo "What should I call you?"

read user

echo "Nice to meet you (Monsieur/Madame.) $user"
sleep 1s
echo "So I have a few script options available for you"
echo "Here they are:"
sleep 0.3s
echo "1. Create a TODO Log"
sleep 0.2s
echo "2. Merge Log"
sleep 0.2s
echo "3. File Type Count"
sleep 0.2s
echo "4. Directory, Files and Links Count"
sleep 0.2s

echo "What job would Monsieur/Madame $user like me to do for them?? (Please use the index numbers)"
sleep 0.2s

read script
sleep 0.1s

if [ $script -eq 1 ]; then
	cd ~/CS1XA3
	if [ -e "todo.log" ];then
		rm todo.log
	fi
	echo 'Your output would be ready in a second'
	find -name "*" -type f | xargs grep -i "TODO" --exclude=todo.log --exclude=project_analyze.sh --exclude=README.md > todo.log
	mv ./todo.log ./Project01/todo.log
fi
if [ $script -eq 2 ]; then
	if [ -e "merge.log" ];then
		rm merge.log
	fi
	echo "Very Well Monsieur/Madame $user"
	echo 'Give me a second.... Your output will be found in a file named merge.log'
	git log -i --oneline --grep="merge" | cut -d' ' -f1 > merge.log
fi
if [ $script -eq 3 ]; then
	echo "Be right back with your output!"
	sleep 0.2s
	cd ~/CS1XA3/
	html=$(find . -name "*.hs" -type f | wc -l)
	js=$(find . -name "*.js" -type f | wc -l)
	css=$(find . -name "*.css" -type f | wc -l)
	py=$(find . -name "*.py" -type f | wc -l)
	hs=$(find . -name "*.hs" -type f | wc -l)
	sh=$(find . -name "*.sh" -type f | wc -l)
	echo "HTML: $html"
	echo "JavaScript: $js"
	echo "CSS: $css"
	echo "Python: $py"
	echo "Haskell: $hs"
	echo "Bash Script: $sh"
fi
if [ $script -eq 4 ]; then
	if [ -e "item_count.log" ]; then
		rm item_count.log
	fi
	echo "Sure thing, What directory would you like me to search? (We are Home right now!)"
	read dir
	cd ~/
	tfiles=$(ls -l $dir | wc -l)
	echo "You have $tfiles files in $dir"
	tf=$(ls -l $dir | grep -c ^-)
	td=$(ls -l $dir | grep -c ^d)
	tl=$(ls -l $dir | grep -c ^l)
	a="Files: $tf"
	b="Directories: $td"
	c="Links: $tl"
	touch item_count.log
	echo $a >> item_count.log
	echo $b >> item_count.log
	echo $c >> item_count.log
	mv ./item_count.log ./CS1XA3/Project01/item_count.log
fi
