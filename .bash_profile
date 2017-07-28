export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tool

alias ios='meteor run ios --mobile-server="https://myroutes.io" --settings settings.json'
alias mrt='meteor --settings settings.json'
alias droid='meteor run android-device --mobile-server="https://myroutes.io" --settings settings.json'
alias localdroid='meteor run android-device --settings settings.json'
alias emulator='meteor run android --mobile-server="https://myroutes.io" --settings settings.json'
alias emulatorlocal='meteor run android --settings settings.json'
alias iphone='meteor run ios-device --mobile-server="https://myroutes.io" --settings settings.json'
alias iphonelocal='meteor run ios-device --settings settings.json'

alias buildandroid='meteor build ~/ --server=myroutes.io

cd ../../../thijssmudde/android/
rm myroutes_aligned.apk myroutes_signed.apk  release-unsigned.apk 
$ANDROID_HOME/build-tools/25.0.2/zipalign -f -v 4 release-unsigned.apk myroutes_aligned.apk
$ANDROID_HOME/build-tools/25.0.2/zipalign -c -v 4 myroutes_aligned.apk
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 myroutes_aligned.apk myroutes
jarsigner -verify -verbose -certs myroutes_aligned.apk
$ANDROID_HOME/build-tools/25.0.2/zipalign 4 myroutes_aligned.apk myroutes_signed.apk
open .

osascript -e "Sign application MyRoutes Online Route Planner"'
