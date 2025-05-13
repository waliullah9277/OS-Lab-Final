# 1. Check if a number is even or odd
# read -p "Enter a number: " num

# if (( num % 2 == 0 )); then
#     echo "$num is Even"
# else
#     echo "$num is Odd"
# fi

#  2. Find the factorial of a number
# read -p "Enter a number: " num
# fact=1

# for (( i=1; i<=num; i++ ))
# do
#     fact=$((fact * i))
# done

# echo "Factorial of $num is $fact"

# 3. Check if a string is a palindrome
# read -p "Enter a word: " word

# reverse=$(echo "$word" | rev)

# if [[ "$word" == "$reverse" ]]; then
#     echo "$word is a palindrome"
# else
#     echo "$word is not a palindrome"
# fi

# 4. Sum of digits of a number
# read -p "Enter a number: " num
# sum=0

# while [ $num -gt 0 ]
# do
#     digit=$((num % 10))
#     sum=$((sum + digit))
#     num=$((num / 10))
# done

# echo "Sum of digits is $sum"


# 5. Print Fibonacci Series up to N terms
# read -p "Enter number of terms: " n
# a=0
# b=1

# echo "Fibonacci Series:"

# for (( i=0; i<n; i++ ))
# do
#     echo -n "$a "
#     fn=$((a + b))
#     a=$b
#     b=$fn
# done
# echo

# 6. Check whether a number is prime
# read -p "Enter a number: " num
# is_prime=1

# if (( num <= 1 )); then
#     is_prime=0
# fi

# for (( i=2; i*i<=num; i++ ))
# do
#     if (( num % i == 0 )); then
#         is_prime=0
#         break
#     fi
# done

# if (( is_prime == 1 )); then
#     echo "$num is a Prime Number"
# else
#     echo "$num is Not a Prime Number"
# fi


# 7. Find the largest among three numbers
# read -p "Enter first number: " a
# read -p "Enter second number: " b
# read -p "Enter third number: " c

# if (( a >= b && a >= c )); then
#     echo "$a is the largest"
# elif (( b >= a && b >= c )); then
#     echo "$b is the largest"
# else
#     echo "$c is the largest"
# fi


# 8. Calculate the sum of N natural numbers

# read -p "Enter a number: " n
# sum=0

# for (( i=1; i<=n; i++ ))
# do
#     sum=$((sum + i))
# done

# echo "Sum of first $n natural numbers is $sum"


# 9. Count vowels in a string
# read -p "Enter a string: " str
# vowels=$(echo "$str" | grep -o -i "[aeiou]" | wc -l)

# echo "Number of vowels: $vowels"


# 10. Reverse a number
# read -p "Enter a number: " num
# rev=0

# while [ $num -gt 0 ]
# do
#     digit=$((num % 10))
#     rev=$((rev * 10 + digit))
#     num=$((num / 10))
# done

# echo "Reversed number is $rev"


# 11. Check if a number is an Armstrong number
# read -p "Enter a number: " num
# original=$num
# sum=0

# while [ $num -gt 0 ]
# do
#     digit=$((num % 10))
#     sum=$((sum + digit * digit * digit))
#     num=$((num / 10))
# done

# if [ $sum -eq $original ]; then
#     echo "$original is an Armstrong number"
# else
#     echo "$original is NOT an Armstrong number"
# fi


# 12. Print multiplication table
# read -p "Enter a number: " num

# echo "Multiplication table for $num:"
# for (( i=1; i<=10; i++ ))
# do
#     echo "$num x $i = $((num * i))"
# done


# 13. Simple calculator using case
# echo "Enter two numbers:"
# read a
# read b

# echo "Choose operation: + - * /"
# read op

# case $op in
#     +) echo "Result: $((a + b))" ;;
#     -) echo "Result: $((a - b))" ;;
#     '*') echo "Result: $((a * b))" ;;
#     /) echo "Result: $((a / b))" ;;
#     *) echo "Invalid operator!" ;;
# esac


# 14. Check if a year is a Leap Year
# read -p "Enter a year: " year

# if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
#     echo "$year is a Leap Year"
# else
#     echo "$year is Not a Leap Year"
# fi


# 15. Count the number of lines, words, and characters in a file
# read -p "Enter filename: " file

# if [ -f "$file" ]; then
#     lines=$(wc -l < "$file")
#     words=$(wc -w < "$file")
#     chars=$(wc -c < "$file")
#     echo "Lines: $lines"
#     echo "Words: $words"
#     echo "Characters: $chars"
# else
#     echo "File does not exist"
# fi


# 16. Print all even numbers from 1 to N
# read -p "Enter a number: " n

# echo "Even numbers from 1 to $n:"
# for (( i=1; i<=n; i++ ))
# do
#     if (( i % 2 == 0 )); then
#         echo -n "$i "
#     fi
# done
# echo


# 17. Menu-driven program (Add, Subtract, Multiply, Divide)
# while true
# do
#     echo -e "\nSimple Calculator Menu"
#     echo "1. Add"
#     echo "2. Subtract"
#     echo "3. Multiply"
#     echo "4. Divide"
#     echo "5. Exit"
#     read -p "Choose option: " choice

#     if [ $choice -eq 5 ]; then
#         echo "Exiting..."
#         break
#     fi

#     read -p "Enter first number: " a
#     read -p "Enter second number: " b

#     case $choice in
#         1) echo "Result: $((a + b))" ;;
#         2) echo "Result: $((a - b))" ;;
#         3) echo "Result: $((a * b))" ;;
#         4) 
#            if [ $b -ne 0 ]; then
#                echo "Result: $((a / b))"
#            else
#                echo "Cannot divide by zero"
#            fi ;;
#         *) echo "Invalid option" ;;
#     esac
# done


# 18. Check whether a number is positive, negative, or zero
# read -p "Enter a number: " num

# if (( num > 0 )); then
#     echo "Positive number"
# elif (( num < 0 )); then
#     echo "Negative number"
# else
#     echo "Zero"
# fi


# 19. Check if a file exists and is readable
# read -p "Enter file name: " file

# if [ -r "$file" ]; then
#     echo "File exists and is readable"
# else
#     echo "File either doesn't exist or not readable"
# fi


# 20. Sum of numbers in a list (entered by user)
# read -p "Enter numbers (space-separated): " -a arr
# sum=0

# for num in "${arr[@]}"
# do
#     sum=$((sum + num))
# done

# echo "Sum of numbers is $sum"



