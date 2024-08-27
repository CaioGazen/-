#!/bin/bash
cd build/
rm -rf *{.java, .class}

echo "Running jflex"
echo ""
/usr/lib/jvm/java-8-openjdk/bin/java -jar ../libs/jflex-full-1.9.1.jar ../src/*.jflex

echo ""
echo "Running cup"
echo ""

/usr/lib/jvm/java-8-openjdk/bin/java -jar ../libs/java-cup-11b.jar -parser Parser ../src/*.cup

echo ""
echo "Moving files"
echo ""

mv ../src/*.java .
cp ../src/Main.java.src ./Main.java

echo ""
echo "Building"
echo ""

/usr/lib/jvm/java-8-openjdk/bin/javac -Xlint -classpath .:../libs/java-cup-11b-runtime.jar *.java
