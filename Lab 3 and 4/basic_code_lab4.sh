LOOP

# 1. for loop
# SYNTAX
# for variable in list; do
# # Commands to execute
# done
# example 1
# for i in 1 2 3 4 5; do
# echo &quot;Number: $i&quot;
# done
# example 2
# for i in {1..5}; do
# echo &quot;Number: $i&quot;
# done
# for i in {0..10..2}; do
# echo &quot;Number: $i&quot;
# done
# example 3
# x=1
# y=5
# for i in $(seq $x $y); do
# echo &quot;Number: $i&quot;
# done
# x=1
# y=2
# z=20
# for i in $(seq $x $y $z); do
# echo &quot;Number: $i&quot;
# done
# example 4 - C approach
# for (( i=1;i&lt;=5;i++ )); do
# echo &quot;Number: $i&quot;
# done
# CLP
#Write a Shell program to find the sum of all numbers between 50 and 100, which are divisible
by 3 and not divisible by 5.
# for i in {50..100}; do

# if(( $i%3 == 0 &amp;&amp; $i%5 != 0 )); then
# echo &quot;Number is: $i&quot;
# (( sum+=i ))
# fi
# done
# echo &quot;Sum is: $sum&quot;
############################################################################
#########
# While loop
# SYNTAX
# while [ condition ]; do
# # Commands to execute
# done
# i=1
# while [ $i -le 5 ]; do
# echo &quot;Number: $i&quot;
# ((i++)) # Increment i
# done

Function

# # 1. basic function syntax
# myFunction(){
# echo &quot;Hello from myFunction!&quot;
# }
# myFunction
# # user input using function
# ask_name(){
# read -p &quot;Enter your name: &quot; name
# echo &quot;Hello $name!&quot;
# }
# ask_name
# 2. Function with Arguments
# greet(){
# echo &quot;Hello, $1&quot;
# }

# name=&quot;Shoab&quot;
# greet $name
# greet &quot;Alam&quot;
# sum function
# add(){
# echo &quot;Sum is: $(($1+$2))&quot;
# }
# add 10 15

# 3. Function returning a value
add(){
result=$(($1+$2))
echo $result
}
sum=$(add 10 15)
echo &quot;Sum is: $sum&quot;
# 4. Function with Default Arguments
greet() {
name=${1:-&quot;Guest&quot;}
name2=${2:- &quot;Alam&quot;}
echo &quot;Hello, $name!&quot;
echo &quot;Hello, $name2!&quot;
}
greet &quot;Bob&quot; &quot;shoab&quot;
greet # No argument passed
# 5. Local Variables in Functions
calculate() {
local num=10
echo &quot;Inside function: $num&quot;
}
calculate
echo &quot;Outside function: $num&quot; # num is not accessible

Array
# # Array declaration
# arr=( 1 2 3 4 5 6 7 8 9 10)
# myArray=(&quot;apple&quot; &quot;banana&quot; &quot;cherry&quot;)
# # Accessing array element
# echo ${arr[2]} # Output: 3
# echo ${myArray[0]} # Output: apple
# echo ${myArray[@]} # Output: apple banana cherry
# echo ${arr[@]:4} # Output: 5 6 7 8 9 10
# echo ${myArray[0]:2} # Output: ple
# # Length of Array
# echo ${#myArray[@]} # Outputs: 3
# echo &quot;Length of the first element: ${#myArray[0]}&quot;
# # Adding Elements
# arr+=(60 70)
# echo ${arr[@]}
# myArray[3]=&quot;date&quot;
# echo ${myArray[@]} # Outputs: apple banana cherry date
# #Updating Elements
# arr[9]=9
# echo ${arr[@]}
# # Removing Elements
# unset myArray[2]
# echo ${myArray[@]} # Outputs: apple banana date
# # Search in Array
# echo Search: ${arr[@]/*[6]*/} # filter values that matches
# # Loop in Array: For Loop
# arr=( 1 2 3 4 5 6 7 8 9 10)
# for i in &quot;${arr[@]}&quot;; do
# echo $i
# done
# # Loop in Array: While Loop
# arr=(1 2 3 4 5 6 7 8 9 10)
# index=0
# while [ $index -lt ${#arr[@]} ]; do

# echo &quot;${arr[index]}&quot;
# ((index++))
# done
#!/bin/bash
# User input for array:
# read -p &quot;Enter elements separated by spaces: &quot; -a my_array # -a flag stores input directly into
an array
# echo &quot;You entered: ${my_array[@]}&quot;

# # Exercise 1
# # Define an array of numbers
# read -p &quot;Enter elements separated by spaces: &quot; -a numbers
# # Initialize max with the first element
# max=${numbers[0]}
# # Loop through all elements in the array
# for num in &quot;${numbers[@]}&quot;; do
# # Compare current element with max
# if (( num &gt; max )); then
# max=$num
# fi
# done
# # Print the largest element
# echo &quot;The largest element in the array is: $max&quot;