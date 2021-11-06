#!/bin/sh
# Welcome to the most retarded script in existence which I only wrote as I'm too lazy to sort out issues myself rE
awk -v n=1 'NR==FNR{total=NR;next} FNR==total-n+1{exit} 1' ./lawnicons/app/src/main/res/xml/grayscale_icon_map.xml ./lawnicons/app/src/main/res/xml/grayscale_icon_map.xml >> temp.txt && mv temp.txt ./lawnicons/app/src/main/res/xml/grayscale_icon_map.xml
rm temp.txt
cat patches.xml >> ./lawnicons/app/src/main/res/xml/grayscale_icon_map.xml
echo "added strings to grayscale_icon_map.xml"
echo "adding VectorGraphics or whatever they're called.."
mv ./vectors/* ./lawnicons/app/src/main/res/drawable/
rm -rf "./lawnicons/app/src/main/res/drawable/.git"
echo "try building normally now :>"

# i need to stop making small stupid mistakes...
