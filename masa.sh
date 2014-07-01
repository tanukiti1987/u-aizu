#!/bin/sh

voices=`say -v ?`
if [ $# -eq 0 ]; then
  name="Takahashi Masamitsu"
else
  name=$1
fi
echo "$voices" | while read line; do
  array=($line)
  who=${array[0]}
  echo "$who says. $name"
  say -v "$who" -r 10 $name
done
