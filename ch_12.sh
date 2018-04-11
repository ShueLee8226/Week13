#!/bin/bash

clear
echo "welcome to chapter 12"
echo "we'll be using the rsync command"
echo "First let look what option we have in rsync"
sleep 2
rsync
read

clear
echo "let move a directory to a different path"
read -p "Enter a name for a directory  " test
mkdir $test
read -p "Now create a file " test1
touch $test1
read -p "Enter another file " test2
touch $test2
mv $test1 $test
mv $test2 $test
ls
sleep 3

echo "Now let copy that directory and put it into the tmp directory"
echo "And inside it should be name: Simple"
sleep 4
pwd
read -p "Retype the path above here: " path 
rsync -ah --delete $path /tmp/Simple

echo "now let check"
cd /tmp
ls
sleep 4

cd $path
cd $test
rm $test1 $test2
cd ..
rmdir $test
