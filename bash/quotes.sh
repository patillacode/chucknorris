#!/bin/sh

index=0
while read line; do
  quotes[index]="$line"
  index=$((index+1))
done < '../quotes.txt'

num_quotes=${#quotes[*]}
echo ${quotes[$((RANDOM%num_quotes))]}