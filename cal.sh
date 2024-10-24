  GNU nano 8.2                                                                                 cal.sh                                                                                 Modified
















#!/bin/bash

add() {
  echo "Result: $(($1 + $2))"
}

subtract() {
  echo "Result: $(($1 - $2))"
}

multiply() {
  echo "Result: $(($1 * $2))"
}

divide() {
  if [ $2 -eq 0 ]; then
    echo "Error: Division by zero is not allowed."
  else
    echo "Result: $(($1 / $2))"
  fi
}

echo "Simple Calculator"
echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

echo "Choose operation: "
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read operation

case $operation in
  1) add $num1 $num2 ;;
  2) subtract $num1 $num2 ;;
  3) multiply $num1 $num2 ;;
  4) divide $num1 $num2 ;;
  *) echo "Invalid operation selected." ;;
esac
