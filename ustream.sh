#!/usr/bin/env bash

num=$(curl -s  $1 | perl -lane 'print $1 if /mobile\/view\/channel\/(\d+)"/')
if [[ -n num ]]; then
  echo "Not Live"
  exit 1
fi
echo http://iphone-streaming.ustream.tv/uhls/$num/streams/live/iphone/playlist.m3u8
