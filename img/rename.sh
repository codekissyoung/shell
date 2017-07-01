#!/bin/bash
count=1;
for img in `find . -iname "*.png" -o -iname '*.jpg'`;do
	ext=${img##*.}
	new_name="image_"$count.$ext;
	echo $new_name;
	mv $img $new_name;
	let count++;
done;
