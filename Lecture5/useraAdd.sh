#!/bin/bash -x
read -p "Enter first number" x
read -p "Enter second number" y
z=$(( $x + $y ))
echo The Addition of two numbers is $z
