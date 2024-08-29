#!/bin/bash
cd build/

echo ""
echo ""
echo "-------------------------------------------------------------------"
echo "                 Running the correct examples "
echo "-------------------------------------------------------------------"
echo ""
echo "Exemplo 1"
bat ../certos/exemplo1.\<\>

echo ""

java -cp .:../libs/java-cup-11b-runtime.jar Main ../certos/exemplo1.\<\>

echo ""
echo ""
echo "Exemplo 2"

bat ../certos/exemplo2.\<\>

echo ""

java -cp .:../libs/java-cup-11b-runtime.jar Main ../certos/exemplo2.\<\>

echo ""
echo ""
echo "Exemplo 3"

bat ../certos/fib.\<\>

echo ""

java -cp .:../libs/java-cup-11b-runtime.jar Main ../certos/fib.\<\>

echo ""
echo ""
echo "-------------------------------------------------------------------"
echo "                 Running the wrong examples "
echo "-------------------------------------------------------------------"
echo ""
echo "Exemplo 1"
bat ../errados/errado1.\<\>

echo ""

java -cp .:../libs/java-cup-11b-runtime.jar Main ../errados/errado1.\<\>

echo ""
echo ""
echo "Exemplo 2"

bat ../errados/errado2.\<\>

echo ""

java -cp .:../libs/java-cup-11b-runtime.jar Main ../errados/errado2.\<\>

echo ""
echo ""
echo "Exemplo 3"

bat ../errados/errado3.\<\>

echo ""

java -cp .:../libs/java-cup-11b-runtime.jar Main ../errados/errado3.\<\>
