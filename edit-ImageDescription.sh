#!/bin/bash

test -f "$1" || exit 1

current_value=$(exiv2 -g "Exif.Image.ImageDescription" -Pv "$1")
description=$(echo -ne "$current_value" |
	dmenu -p "Description:" -i -fn "Terminus (TTF):pixelsize=28")

test "$description" || exit

exiv2 -M"set Exif.Image.ImageDescription $description" "$1"
