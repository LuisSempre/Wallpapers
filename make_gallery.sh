#!/usr/bin/env bash

rm -rf thumbnails
mkdir thumbnails

username="jonascarpay"

echo "### Wallpapers" > README.md
echo "My current wallpaper rotation" >> README.md
echo "" >> README.md

for i in papes/*
do
    convert -resize 200x "$i" "${i/papes/thumbnails}"
    echo "[![${i/papes\//}](https://raw.githubusercontent.com/$username/Wallpapers/master/thumbnails${i/papes/})](https://raw.githubusercontent.com/$username/Wallpapers/master/$i)" >> README.md
done