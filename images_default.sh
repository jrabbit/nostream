#!/usr/bin/env bash
convert -define png:size=640x264 $1  -thumbnail '640x264>' -background transparent -gravity center -extent 640x264 media/$1