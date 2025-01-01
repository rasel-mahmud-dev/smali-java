jar cvf output/myapp.jar -C java-out .
/home/rasel/Android/Sdk/build-tools/34.0.0/d8 --output ./output output/myapp.jar

# 1. Push the DEX file to the device/emulator
echo "Pushing DEX file to device/emulator..."
adb push output/classes.dex /data/local/tmp/

# 2. Run the DEX file on the device/emulator
echo "Running DEX file on device/emulator..."
adb shell "dalvikvm -cp /data/local/tmp/output.dex com.example.MyClass"