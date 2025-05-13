# Command Lines

# File Manipulation
# 1. ~ : Home directory
# 2. pwd : Print working directory - Shows path of the current directory
# (/home/user)
# 3. ls : List Segments.
# a. ls # Lists files in the current directory
# b. ls -l # Lists files with detailed information
# c. ls -a # Lists all files, including hidden ones
# 4. cd : move to another directory
# a. cd location
# b. cd .. : change one level up in directory
# c. cd ~: change to home directory
# 5. mkdir: make directory.
# a. mkdir nameOfFolder
# b. mkdir test1 test2 test3
# c. Create directory with space name
# d. create directory with path
# e. Verbose Mode (Show Confirmation)
# 6. touch: make file.
# a. touch file.txt
# b. Hidden file
# 7. Write in a file: nano fileName
# a. Save with a backup
# b. Enable line numbers

# 8. Open a file: gedit fileName
# 9. Show content of the file in terminal: cat filename
# 10. Remove directory/file when folder is empty: rmdir folderName
# a. Remove directory/file with content: rm -rf folderName
# b. Remove Nested Empty Directories
# c. Remove files: rm fileName.extenion
# 11. Use of ping command
# 12. See ip address: iconfig
# 13. Copy directory: cp -r source destination
# a. cp file.pdf File2
# b. cp file location
# c. Copy and rename a file
# d. Copy multiple files to a directory
# 14. CLP Cut/move/rename
# 15. Create many files and folders at a time:
# a. mkdir A{1..10}
# b. rmdir A{1..10}
# c. touch A{1..10}.txt
# d. rm -rf A{1..10}.txt
# e. touch {doc,spreed,presentation}.txt
# f. touch document.{txt,pdf,mp3,mp4}
# g. touch file{4..6}.{txt,doc}

# Wildcards
# touch firstfile secondfile thirdfile foo1 foo2 foo3 barry.txt blah.txt flower.jpg
# frog.png bob example.png video.mp4 audio.mp3
# 1. * - matches zeros or more characters
# a. Ls *.txt - task create .txt and show it using * wildcard
# 2. ? matches one single character
# a. Ls file?.txt
# 3. [] matches range of characters
# a. ls file[123].txt

# Permission:
# Example of usages of permission:
# 1. touch name.sh -&gt; echo “ hello world” -&gt; ./name.sh
# 2. Chmod u+x name.sh
# 1. See permission of files: ls -l path



# lab 2
# Filters Commands

# 1. Lab 02 sample text

# Fred apples 20
# Susy oranges 5
# Mark watermellons 12
# Robert peairs 4
# Terry oranges 9
# Lisa peaches 7
# Susy oranges 12
# Mark grapes 39
# Anne mangoes 7
# Greg pineapples 3
# liver rockmellons 2
# Betty limes 14
# 2. Head -n 3 filters.txt
# 3. Head -c 30 filters.txt
# 4. Tail -n 3 filters.txt
# 5. Use head/tail for multiple files
# 6. Sort filters.txt
# 7. Sort -r filters.txt
# 8. Sort - numeric, reverse numeric, specific columns, case insensitive manner,
# random sorting
# 9. nl filters.txt
# 10.nl -ba filters.txt
# 11. nl -w 100 filters.txt
# 12.wc filters.txt - line word characters (count only by lines,words,characters,bytes)
# 13.Cut -f 3 -d ‘ ‘ filters.txt
# 14.Sed ‘s/Mark/Shoab/g’ filters.txt
# Regular Expressions
# 1. egrep ‘mellons’ filters.txt, -n,-c
# 2. egrep '[aeiou]{,3}' filters.txt
# 3. Find lines that doesn't end with 2 but contains 2
# 4. egrep 'or|is|go' filters.txt
# CLP
# 5. Find lines that contain only numbers, Alphabets,
# 6. Match an Exact Word, email, phone numbers, Match IP Addresses.

# Pipeline Expression:
# 1. Store command output in file
# a. Ls > out.txt
# b. Head > out.txt
# c. Tail >> out.txt
# 2. Ls | head -3 | tail -1 | > output.txt
# 3. Top - ctrl c
# 4. Ps aux | grep ‘firefox’
# 5. Kill ‘Pid number’