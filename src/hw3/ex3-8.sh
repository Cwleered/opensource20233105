#!/bin/bash

# DB 파일명
db_file="DB.txt"

# DB 파일이 없으면 새로 생성
if [ ! -e "$db_file" ]; then
    touch "$db_file"
fi

# 정보 입력 함수
input_info() {
    read -p "이름: " name
    read -p "생일: " birthday
    read -p "전화번호: " number
    echo "$name, $birthday, $number" >> "$db_file"
    echo "정보가 추가되었습니다."
}

# DB 파일 초기화 함수
reset_db() {
    > "$db_file"
    echo "DB 파일이 초기화되었습니다."
}

# 메뉴 표시
while true; do
    echo "1. 정보 추가"
    echo "2. DB 초기화"
    echo "3. 종료"
    read -p "원하는 작업을 선택하세요: " choice
    case $choice in
        1)
            input_info
            ;;
        2)
            reset_db
            ;;
        3)
            break
            ;;
        *)
            echo "올바른 선택이 아닙니다. 다시 선택하세요."
            ;;
    esac
done