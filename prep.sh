#!/bin/sh
# Welcome to the most retarded script in existence which I only wrote as I'm too lazy to sort out issues myself rE
awk -v n=1 'NR==FNR{total=NR;next} FNR==total-n+1{exit} 1' ./lawnicons/app/src/main/res/xml/grayscale_icon_map.xml ./lawnicons/app/src/main/res/xml/grayscale_icon_map.xml >> temp.txt && mv temp.txt ./lawnicons/app/src/main/res/xml/grayscale_icon_map.xml
rm temp.txt 2> /dev/null
cat patches.xml >> ./lawnicons/app/src/main/res/xml/grayscale_icon_map.xml
echo "added strings to grayscale_icon_map.xml"
echo "adding VectorGraphics or whatever they're called.."
mv ./vectors/* ./lawnicons/app/src/main/res/drawable/
rm -rf "./lawnicons/app/src/main/res/drawable/.git"
echo "try building normally now :>"
echo "to do that, simply run ./gradlew assembleDebug in the lawnicons directory, make sure ANDROID_SDK_ROOT is set to the right location!"
echo "if you're too lazy to set that up, simply running the command in Android Studio's Terminal with java 11 or above also works"

# i need to stop making small stupid mistakes...
