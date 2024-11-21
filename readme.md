Smali is an assembly-like language used to describe the intermediate bytecode for Android
applications that run on the Dalvik Virtual Machine (DVM) or Android Runtime (ART).
It is primarily used to disassemble and modify Android application packages (APKs).
Smali is the human-readable representation of the Dalvik Executable format (.dex) used in Android
applications.

### Assembling smali to Dex.

### Execute Dex with Dalvik VM:

```shell

# 1. Assemble Smali files into a DEX file
echo "Assembling Smali files..."
java -jar smali.jar assemble smali -o output.dex

# 2. Push the DEX file to the device/emulator
echo "Pushing DEX file to device/emulator..."
adb push output.dex /data/local/tmp/

# 3. Run the DEX file on the device/emulator
echo "Running DEX file on device/emulator..."
adb shell "dalvikvm -cp /data/local/tmp/output.dex com.example.MyClass"

```
 