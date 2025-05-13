# More Pipelining Examples (Chained Commands)
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
# Bonus Tip: Combine with tee to save and view output
# bash
# Copy code
# ls *.txt | tee file_list.txt | wc -l
# Shows .txt files

# Saves to file_list.txt

# Counts the number of files