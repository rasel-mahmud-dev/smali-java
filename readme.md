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
 
```shell
javac -d java-out com/example/MyApp.java 
java -cp java-out com.example.MyApp
/home/rasel/Android/Sdk/build-tools/34.0.0/d8 --output=./output/a.dex ./java-out


```


### convert java class to jar and jar to dex
```shell
jar cvf output/myapp.jar -C java-out .
/home/rasel/Android/Sdk/build-tools/34.0.0/d8 --output ./output output/myapp.jar
```


### Run dex to android 
```shell

/home/rasel/Android/Sdk/build-tools/34.0.0/d8 --output ./output output/myapp.jar

# 1. Push the DEX file to the device/emulator
echo "Pushing DEX file to device/emulator..."
adb push output/classes.dex /data/local/tmp/

# 2. Run the DEX file on the device/emulator
echo "Running DEX file on device/emulator..."
adb shell "dalvikvm -cp /data/local/tmp/classes.dex com.example.MyClass"
```

```shell
/home/rasel/Android/Sdk/build-tools/34.0.0/d8   --dex --output=./output_dir/classes.dex ./java-out
```

### run jar
```shell
javac -d java-out com/example/MyApp.java 
jar cvf output/myapp.jar -C java-out .
jar cmf MANIFEST.MF -C java-out .
java -jar ./output/myapp.jar
```