# Task 2: Write a Shell program to find total number of alphabets, digits or special characters in a string.
# Sample Input:
# Today is 12 November.
# Output:
# Alphabets = 15
# Digits = 2
# Special characters = 4

# write a function in number of alphabets, digits or special characters in a string.
count_all_three_opreation() {
    input="$1"
    alphabets=0
    digits=0
    special=0

    for ((i=0; i<${#input}; i++)); do
        char="${input:$i:1}"

        if [[ "$char" =~ [a-zA-Z] ]]; then # This is the regular expression (regex) match operator in Bash because normal comparison not working
            ((alphabets++))
        elif [[ "$char" =~ [0-9] ]]; then
            ((digits++))
        else
            ((special++))
        fi
    done

    echo "Alphabets = $alphabets"
    echo "Digits = $digits"
    echo "Special characters = $special"
}

# main
input_string="Today is 12 November."
count_all_three_opreation "$input_string"


