#!/bin/bash
# this is concept of arrays in bash scripting

MOVIES=("PEDDI" "PUSHPA" "SHIVA" "The Dark Knight") # this is how we can declare an array in bash scripting
echo "The first movie in the array is: ${MOVIES[0]}" # this is how we can access the first element of the array
echo "The second movie in the array is: ${MOVIES[1]}" # this is how we can access the second element of the array
echo "The third movie in the array is: ${MOVIES[2]}" # this is how we can access the third element of the array
echo "The fourth movie in the array is: ${MOVIES[3]}" # this is how we can access the fourth element of the array
echo "The total number of movies in the array is: ${#MOVIES[@]}" # this is how we can get the total number ofelements in the array
echo "All the movies in the array are: ${MOVIES[@]}" # this is how we can access all the elements of the array
