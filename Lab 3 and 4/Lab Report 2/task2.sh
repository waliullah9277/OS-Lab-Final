str="Today is 12 November."

alpha=0
digit=0
special=0

for (( i=0; i<${#str}; i++ ))
do
  ch="${str:$i:1}"
    if [[ "$ch" =~ [A-Za-z] ]]; then
        alpha=$((alpha + 1))
    elif [[ "$ch" =~ [0-9] ]]; then
        digit=$((digit + 1))
    else
    special=$((special + 1))
  fi
done

echo "Alphabets = $alpha"
echo "Digits = $digit"
echo "Special characters = $special"
