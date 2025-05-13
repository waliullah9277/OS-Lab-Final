# 1. length of string
# str="Walillah"
# echo "String Length: ${#str}"

# 2. substing extraction
# echo "Substring 1: ${str::5}"
# echo "Substring 2: ${str: -1}"

# 3. Replacing string
# str="I love linux"
# str="I love linux love"
# new_str=${str/love/hate}
# new_str=${str//love/hate}
# echo $new_str

# 4. remove
# str="I love linux"
# echo ${str#lo}
# echo ${str%nux}

# 5. string concatation
# str1="Hello"
# str2="World"
# str3="$str1 $str2"
# echo $str3

# check if string is empty
str="hello"
if [ -z "$str" ]; then
    echo String is empty
else
    echo String is not empty
fi



# basic function

# myfunc(){
#     echo hello world
# }

# myfunc

# ask_name(){
#     read -p "Enter your name: " name
#     echo "Hello, $name"
# }

# ask_name


# ask_name(){
#     echo "Hello, $name"
# }

# read -p "Enter your name: " name
# # read -p "Enter your name: " name
# ask_name $name


# addition
# add(){
#     num1=$1
#     num2=$2
#     echo $(( $num1 + $num2 ))
# }

# a=10
# b=20
# add $a $b

#addition
add(){
    num1=$1
    num2=$2
    result=$(($num1+$num2))
    echo $result
}

read -p "Enter number1: " a
read -p "Enter number2: " b
sum=$(add $a $b)
echo "Sum is: $sum"


# 1. for loop
# n=5
# for i in {1..5}; do
#     #body
#     echo I love Linux
# done

# even number show
# for i in {0..10..2}; do
#     echo "Even: $i"
# done

# odd number show increase in 3 time per iteration
# for i in {0..10..3}; do
#     echo "Even: $i"
# done

# check the (50-100) range number is divisible by 3 but not divisible 5
# read -p "Enter start number: " x
# read -p "Enter end number: " y

# for i in $(seq $x $y); do
#     if (( i % 3 == 0 && i % 5 != 0 )); then
#         echo "$i"
#     fi
# done


# while loop
i=1
while [ $i -le 5 ]; do
    echo "number: $i"
    ((i++))
done


# array decleration
arr=( 1 2 3 4 5 6 7 8 9 )
myArray=('apple' 'banana' 'chery')

#filter element of array
# echo Search: ${arr[@]/*[5]*/}
# echo Search: ${myArray[@]/*[an]*/}
# echo Search: ${myArray[@]/*[anc]*/}
# echo Search: ${myArray[@]/*[a-n]*/}

# print array
# echo ${arr[2]}
# echo ${arr[@]}
# echo ${arr[@]:3}
# echo ${arr[@]:3}
# echo ${myArray[@]}
# echo ${myArray[@]:2}
# echo ${myArray[0]:2}

#length of array
# echo ${#arr[@]}
# echo ${#myArray[@]}
# echo ${#myArray[0]}

# adding element
# arr+=(10 11)
# echo ${arr[@]}
# myArray[3]='date'
# echo ${myArray[@]}

# deleting an element
# unset myArray[1]
# echo ${myArray[@]}

# loop an array
# for i in "${arr[@]}";do
#     echo $i
# done

# while loop
# index=0
# while [ $index -lt ${#arr[@]} ]; do
#     echo "${arr[index]}"
#     ((index++))
# done


# user input in array and check this array maximum number
read -p "Enter array element: " -a my_array
echo "You entered: ${my_array[@]}"

mx=${my_array[0]} 

for i in "${my_array[@]}"; do
    if (( i > mx )); then
        mx=$i 
    fi
done

echo "Maximum value is: $mx"



