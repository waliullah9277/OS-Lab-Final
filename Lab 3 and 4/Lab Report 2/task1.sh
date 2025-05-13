factorial() {
  num=$1
  fact=1
  for ((i=1; i<=num; i++))
  do
    fact=$((fact * i))
  done
  echo $fact
}

f1=$(factorial 5)
f2=$(factorial 6)
sum=$((f1 + f2))

echo "Factorial of 5 is $f1"
echo "Factorial of 6 is $f2"
echo "Sum of factorials = $f1 + $f2 = $sum"
