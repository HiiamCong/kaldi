for file in wavs/hue_female_huonggiang_book_48k/*; do
	echo $(basename "$file");
	sox $file -b 16 -r 16000 -c 1 wavs/hue_female_huonggiang_book/$(basename "$file");
	done
