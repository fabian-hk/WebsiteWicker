#!/bin/bash

for i in `find static/img/gallery -type f ! -name "*-thumb.JPG" -name "*.JPG"`; 
do 
    echo $i;
    convert $i -auto-orient -quality 60% -thumbnail 600x600 ${i%.*}-thumb.JPG;
    convert -auto-orient -strip -interlace Plane -quality 20% $i ${i%.*}.JPG;
done