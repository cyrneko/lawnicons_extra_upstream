# lawnicons_extra_upstream
An up-stream version of Lawnicons_extra, which should eliminate any issues with merging upstream by using a script for preparing sources for a new build

proper usage:

```
git clone https://github.com/TGRush/lawnicons_extra_upstream.git --recursive
```

Then do this:
```
chmod +x prep.sh && ./prep.sh
```
give it a second aaand....get building as usual (run ./gradlew assembleDebug in Android Studio OR in Terminal with proper SDK path set)
