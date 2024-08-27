#!/bin/bash

echo "Running jflex"
echo ""
java -jar libs/jflex-full-1.9.1.jar src/*.jflex

echo ""
echo "Running cup"
echo ""

java -jar libs/java-cup-11b.jar -parser "<parser>" src/*.cup

echo ""
echo "Moving files"
echo ""

mv src/*.java build/

echo ""
echo "Building"
echo ""

javac -Xlint -cp .:libs/java-cup-11b-runtime.jar build/*java
