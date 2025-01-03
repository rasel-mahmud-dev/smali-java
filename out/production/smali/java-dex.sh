rm -rf java-out/*

javac -d java-out com/example/MyApp.java

java -cp java-out com.example.MyApp

jar cvf output/myapp.jar -C java-out .
/home/rasel/Android/Sdk/build-tools/34.0.0/d8 --output ./output output/myapp.jar

echo "Pushing DEX file to device/emulator..."
adb push output/classes.dex /data/local/tmp/

adb shell ls /data/local/tmp/


echo "Running DEX file on device/emulator..."
adb shell "dalvikvm -cp /data/local/tmp/classes.dex com.example.MyApp"

