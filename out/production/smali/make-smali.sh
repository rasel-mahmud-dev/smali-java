#!/bin/bash


rm -r output/
rm -r com/example/*.class

#javac com/example/MyApp.java

# Hardcoded path for Java file and class name
JAVA_FILE="com/example/MyApp.java"

# Step 1: Compile the Java file into .class
echo "Compiling Java file: $JAVA_FILE"
javac "$JAVA_FILE"

# Step 2: Convert .class file to .dex using d8 (with corrected output syntax)
echo "Converting .class to .dex"
d8 --output=classes/ "com/example/MyApp.class"

# Step 3: Disassemble the .dex file into Smali code using baksmali
echo "Disassembling classes.dex to Smali"
java -jar baksmali.jar disassemble classes/classes.dex

# Cleanup: Remove .class and .dex files after disassembling
echo "Cleaning up..."
rm "$CLASS_NAME.class"
rm -r classes/

echo "Conversion to Smali completed. Smali files are located in the 'smali' directory."
