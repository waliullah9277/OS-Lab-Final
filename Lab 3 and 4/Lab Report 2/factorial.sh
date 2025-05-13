# Task 1: Write a Shell program to find the factorial of two different numbers and sum of the numbers using function.
# Sample Input:
# Factorial of 5 is 120
# Factorial of 6 is 720
# Output:
# 120 + 720 = 840

# factorial calculation
factorial(){
    num1=$1
    ans=1
    for i in $(seq 1 $num1); do
        ((ans *= i))
    done
    echo $ans
}

# main
n1=5
n2=6

fact1=$(factorial $n1)
fact2=$(factorial $n2)
echo "Factorial of $n1 is $fact1"
echo "Factorial of $n2 is $fact2"
result=$(($fact1 + $fact2))
echo "$fact1 + $fact2 = $result"