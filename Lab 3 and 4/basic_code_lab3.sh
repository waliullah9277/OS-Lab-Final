# echo "hello world"
# echo hello
# echo "Md. Shoab Alam" 
# echo -e "Line1\nLine2"

# # this is a comment
# # for multiple comment ctrl + / sign

# # Variable - no required data types, everything treated as string
# name=Shoab
# echo "Hello, $name"
# printf "hello, $name"

# x=5
# y=10
# sum=$(($x+$y))
# echo $sum
# #let is not prefered
# let a=5+155
# echo $a
# let "a = 5 + 155"
# echo $a
# let a++
# echo $a
# let "b = $a - 1"
# echo $b  

# #Normal Variable Assignment
# a=$((5+25))
# echo $a
# ((a++)) # a=$((a + 1)) 
# echo $a

# #proper approaches for division
# a=10
# b=3
# echo "result= $((a/b))"
# #solution
# result=$(echo "scale=2; $a / $b" | bc)
# echo $result

# #user input
# echo "Enter a number:"
# read number
# echo "Number is: $number!"

# read -p "Enter first number: " num1
# read -p "Enter second number: " num2
# echo "Sum is: $((num1+num2))"


# #CLP - Area of a circle - pi r^2
# r=5
# echo "result=$(echo "scale=2; 3.14 * $r * $r" | bc)"

# #Area and Perimeter of a triangle
# #!/bin/bash

# # Read length and width from user
# read -p "Enter the length of the rectangle: " length width

# # Calculate Area and Perimeter
# area=$((length * width))
# perimeter=$((2 * (length + width)))

# # Display results
# echo "Area of Rectangle: $area"
# echo "Perimeter of Rectangle: $perimeter"
# ##########################################################################################
# # Basic String Operations
# str1="Hello"
# str2="World"
# output="$str1$str2" 
# echo $output

# #length of a string
# name="Shoab"
# echo ${#name} 

# # Postition based substring
# string="This is a string"
# echo ${string:1:3}
# echo ${string:10}
# echo ${string:10:2}
# echo ${string:1}

# # Converting Uppercase and Lowercase
# str="Hello World"
# echo "Uppercase: ${str^^}"  # Converts to uppercase
# echo "Lowercase: ${str,,}"  # Converts to lowercase

# #Replace a Substring
# str="I love Python"
# echo ${str/Python/Bash}  # Replaces "Python" with "Bash"

