
#!/bin/bash

# 1. Assemble Smali files into a DEX file
echo "Assembling Smali files..."
java -jar smali.jar assemble . -o output.dex

# 2. Push the DEX file to the device/emulator
echo "Pushing DEX file to device/emulator..."
adb push output.dex /data/local/tmp/

# 3. Run the DEX file on the device/emulator
echo "Running DEX file on device/emulator..."
adb shell "dalvikvm -cp /data/local/tmp/output.dex com.example.MyClass"
