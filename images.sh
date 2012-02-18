#!/usr/bin/env bash
convert -define png:size=$2 $1  -thumbnail "$2>" -background white -gravity center -extent $2 media/$1