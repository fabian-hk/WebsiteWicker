#!/bin/bash

# Create thumbnails and compress original images
for i in `find static/img/gallery -type f ! -iname "*-thumb.jpg" -iname "*.JPG" -iname "*.jpg"`;
do 
    echo $i;
    mv $i ${i%.*}-original.jpg
    convert -auto-orient -quality 60% -thumbnail 600x600 ${i%.*}-original.jpg ${i%.*}-thumb.jpg;
    convert -auto-orient -strip -interlace Plane -quality 20% ${i%.*}-original.jpg ${i%.*}.jpg;
done

# Delete original images
rm static/img/gallery/*-original.jpg