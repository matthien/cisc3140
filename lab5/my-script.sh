#Matthew Thien Shell Script
#print this line 
echo "number of reviews that gave 5 star ratings: "
#count how many times the number 5 comes up in column 6 and print it  
awk -F ',' '$6==5 {++count} END {print count}' ramen-ratings.csv
