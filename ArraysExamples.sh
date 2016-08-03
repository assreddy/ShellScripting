#! /bin/sh
echo "*********************************"
echo " Arrays"
echo "*********************************"
array_name2=(one two three)
echo ${array_name2[0]}

#Initializing an Array during delcaration
#Arrays and Length of the Bash Array:
declare -a declare_array=('d_one' 'd_two' 'd_three')
echo Print Whole Bash Array : ${declare_array[@]}
echo Number of elements in the array : ${#declare_array[@]}
echo Number of Characters in the first elemtnt of the array:${#declare_array}

#Declaring and Assinging a values

Array[0]='0-Zero'
Array[1]='1-One'
Array[2]='2-Two'
Array[3]='3-Three'
Array[4]='4-Four'
Array[5]='5-Five'
echo ${Array[0]}
echo Length of the element located at index 1: ${#Array[1]}
#Extract 2 elements starting from the postion 3
echo ${Array[@]:3:2}
# Exract first four element from an array element.
echo ${Array[2]:0:4}
# Search and replace an array element
echo ${Array[@]/2-Two/2-TWO Array}
# Add element to Array
Array=("${Array[@]}" "6-Six" "7-Seven")
echo ${Array[6]}
echo ${Array[@]}
# Delete Element in Array it will be NULL
#unset Array[1]
#echo ${Array[1]}  // Pringing Null Value as blank...
#echo ${Array[@]}
# Delete Element in Array Permanelty inlcuding the space
#pos=1
#Array=(${Array[@]:0:$pos} ${Array[@]:$(($pos +1))})
#echo ${Array[@]}

Copy_Array=${Array[@]}
echo Copy Array elements to Copy_Array: ${Copy_Array[@]}
Concat_Array=("${Array[@]}" "${Copy_Array[@]}")
echo Concatinating Two Arrays:: ${Concat_Array[@]}
echo Concatinating Array Length:: ${#Concat_Array[@]}

unset Concat_Array
echo ${#Concat_Array[@]}
#Load Content of a File into an Array
declare -a myarray
readarray myarray < ./file.txt
let i=0
while ((${#myarray[@]} > i)); do
printf "${myarray[i++]}\n"
done


echo Load Content of a File into an Array ${myarray[@]}
echo ${#myarray[@]}
echo ${myarray[1]}
