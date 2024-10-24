#!/usr/bin/env bash
cd build/ || exit
rm -rf *{.java,.class,.cup,.jflex}

echo ""
echo "Copy files"
echo ""

cp ../src/* ./

echo "Running jflex"
echo ""
java -jar ../libs/jflex-full-1.9.1.jar ./*.jflex

echo ""
echo "Running cup"
echo ""

java -jar ../libs/java-cup-11b.jar -parser Parser ./*.cup

echo ""
echo "Building"
echo ""

javac -Xlint -classpath .:../libs/java-cup-11b-runtime.jar *.java
