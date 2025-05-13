# OS Lab - Lab no 02
# 1. Touch filter.txt // create txt file
# 2. Nano filter.txt // open file in terminal
# 3. Cat filter.txt // read in terminal
# 4. head filter.txt - filter 10 row
# 5. head -n 5 filter.txt - 1st five row show
# 6. head -c 10 filter.txt - in this file 10 character show
# 7. head filter.txt // first thake show
# 8. tail filter.txt // show last but show in ascending order means
# 9. tail -n 5 filter.txt // show five data
# 10. touch re.txt
# 11. nano re.txt
# 12. head filter.txt re.txt // show two txt file data in one command line
# 13. head -n 5 filter.txt re.txt // show in txt file in 5 data
# 14. tail filter.txt re.txt
# 15. tail -n 5 filter.txt re.txt
# 16. sort filter.txt
# 17. sort -r filter.txt // reverse in data
# 18. sort -n filter.txt // numeric wise sorting
# 19. sort -V filter.txt // numeric wise and alphabetically sorting
# 20. sort -k 3 filter.txt // column 3 wise sort in numeric wise an ascending order
# 21. nl filter.txt // serial wise show data
# 22. nl -ba filter.txt // with space count in serial show data
# 23. nl -w 10 filter.txt // with 10 character space count in serial wise data show
# 24. wc filter.txt // show every
# 25. wc -l filter.txt // show
# 26. wc -w filter.txt
# 27. wc -c filter.txt
# 28. cut -f 1 -d' ' filter.txt
# 29. cut -f 2 -d' ' filter.txt
# 30. cut -f 1,2 -d' ' filter.txt
# 31. sed 's/Fred/Wali/g' filter.txt // replace data
# 32. sed 's/Susy/Waliullah/g' filter.txt
# Regular Expression
# 33. egrep 'mellons' filter.txt
# 34. egrep '2' filter.txt
# 35. egrep '2.' filter.txt // specific a word in by dot(.)
# 36. egrep '2?' filter.txt // doesn’t matter in any number have or not in 2
# 37. egrep 'app' filter.txt
# 38. egrep 'app*' filter.txt
# 39. egrep 'app+' filter.txt // pattern mandatory
# 40. egrep '^5' filter.txt
# 41. egrep '^A' filter.txt

# 42. egrep '^F' filter.txt
# 43. egrep '2$' filter.txt // filter in last charecter
# 44. egrep '20$' filter.txt
# 45. egrep '^[SV]' filter.txt
# 46. egrep '[12]$' filter.txt
# 47. egrep '[aeiou]{3}' filter.txt
# 48. egrep '[aeiou]{1,3}' filter.txt
# 49. egrep 'or|is|go' filter.txt
# 50. egrep '2.' filter.txt
# CLP 1 command here
# 1. egrep -o '([0-9]{1,3}\.){3}[0-9]{1,3}' clp1.txt // show all IP address in one command
# 2. egrep 'apple' clp1.txt // exact word match
