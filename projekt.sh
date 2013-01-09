#! /bin/bash

function convert {

baza1=$1

cyfry=$2

liczba1=$3

declare -ia l1

for i in 0 1 .. $cyfry-1
do
read l1[i]
l1[i]=$(( $liczba1%10 ));
liczba1=$(( $liczba1/10 ));
done

iczba2=$l1[$cyfry-1]

for((i=$cyfry-2; i<=0; i--)) do
liczba2=$(($(($liczba2*$baza1))+$l1[i]));
done

echo liczba1

}

echo  "W jakim systemie jest zapisana Twoja liczba?"

read -e  baza1 

echo "Ile ma cyfr?"

echo -n "Podaj liczbê:"

read -e liczba1

# echo "Na jaki system chcesz j± zamieniæ?"

# read  baza2

convertResult=$`convert baza1 cyfry liczba1`
echo $convertResult

