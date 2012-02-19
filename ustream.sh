#!/usr/bin/env bash

num=$(curl -s  $1 | grep "/mobile/view/channel" | perl -lane 'print $1 if /channel\/(\d+)"/')

echo http://iphone-streaming.ustream.tv/uhls/$num/streams/live/iphone/playlist.m3u8
