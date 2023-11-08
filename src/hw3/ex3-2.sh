#!/bin/bash

# 사용자로부터 정수와 연산자 입력 받기
read -p "첫 번째 정수 입력: " num1
read -p "두 번째 정수 입력: " num2
read -p "연산자 입력 (+ 또는 -): " operator

# 입력된 연산자에 따라 계산
case $operator in
  +)
    result=$(($num1 + $num2))
    ;;
  -)
    result=$(($num1 - $num2))
    ;;
  *)
    echo "잘못된 연산자 입력: $operator"
    exit 1
    ;;
esac

# 결과 출력
echo "결과: $result"
