#!/bin/sh

voices=`say -v ?`
masa="Takahashi Masamitsu"
echo "$voices" | while read line; do
  array=($line)
  who=${array[0]}
  echo "$who says. $masa"
  say -v "$who" $masa
done
