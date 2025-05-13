# Pattern        | Matches
# ---------------|---------------------------------------------------
# *.txt          | All files ending with .txt
# file?.txt      | file1.txt, file2.txt, fileA.txt (only 1 character)
# file[123].txt  | file1.txt, file2.txt, file3.txt
# file[a-c].txt  | filea.txt, fileb.txt, filec.txt
# file[!3].txt   | All files like file1.txt, file2.txt, file4.txt (not 3)


# # Suppose we have these files:
# file1.txt  file2.txt  file3.txt  fileA.txt  data.csv  image.png

# # Use wildcards:
# ls *.txt
# → file1.txt  file2.txt  file3.txt  fileA.txt

# ls file?.txt
# → file1.txt  file2.txt  file3.txt  fileA.txt

# ls file[1-2].txt
# → file1.txt  file2.txt


# 🔹 More Useful Linux Commands (with Examples)
# Command	Description	Example
# head	Show first few lines of a file	head -n 10 file.txt
# tail	Show last few lines of a file	tail -n 5 file.txt
# grep	Search for pattern in a file	grep "hello" file.txt
# find	Search for files and directories recursively	find . -name "*.txt"
# wc	Word, line, and character count	wc -l file.txt
# sort	Sort lines alphabetically or numerically	sort names.txt
# uniq	Remove duplicate lines	uniq sorted.txt
# cut	Extract fields from text	cut -d "," -f2 file.csv
# xargs	Build and execute command lines from input	`find . -name "*.txt"
# tee	Save output to file while showing it	`ls


# 🔹 More Wildcards (Advanced Patterns)
# Wildcard Pattern	Description	Example
# *	Matches any number of characters	ls *.sh
# ?	Matches exactly one character	ls file?.txt
# [abc]	Matches any one character (a, b, or c)	ls file[abc].txt
# [a-z]	Matches any one lowercase character	ls file[a-z].txt
# [0-9]	Matches any digit from 0 to 9	ls file[0-9].txt
# [!abc] or [^abc]	Matches anything except a, b, or c	ls file[!a].txt
# {a,b,c}	Matches any of the patterns inside the braces	ls {file1,file2}.txt
# ** (in zsh)	Matches files recursively in directories	ls **/*.txt


# ls file[1-3]?.txt
# # Matches: file10.txt, file11.txt, file21.txt if they exist

# 🔹 More Pipelining Examples (Chained Commands)
# ➤ 1. Count how many times a word appears in a file
# bash
# Copy code
# cat notes.txt | grep -o "Linux" | wc -l
# Breakdown:

# cat notes.txt: print file

# grep -o "Linux": print only matched word on each line

# wc -l: count the lines (occurrences)

# ➤ 2. List only .txt files and count them
# bash
# Copy code
# ls *.txt | wc -l
# ➤ 3. Sort log entries by most common IP address
# bash
# Copy code
# cat access.log | awk '{print $1}' | sort | uniq -c | sort -nr | head
# Breakdown:

# awk '{print $1}': extract first field (IP address)

# sort: sort them

# uniq -c: count occurrences

# sort -nr: sort by number (reverse)

# head: show top 10 IPs

# ➤ 4. Search all .c files for a function name
# bash
# Copy code
# cat *.c | grep "main"
# ➤ 5. View disk usage of subdirectories sorted by size
# bash
# Copy code
# du -sh * | sort -hr
# 🧠 Bonus Tip: Combine with tee to save and view output
# bash
# Copy code
# ls *.txt | tee file_list.txt | wc -l
# Shows .txt files

# Saves to file_list.txt

# Counts the number of files

