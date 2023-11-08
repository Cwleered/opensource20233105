#!/bin/bash

# 내부 함수 정의: my_ls
my_ls() {
    # 'ls' 명령어 실행과 입력 인자 전달
    ls "$@"
}

echo "프로그램을 시작합니다"
echo "함수 안으로 들어왔음"


# 사용 예제: my_ls를 호출하여 ls 명령어와 옵션을 실행
my_ls -l -a

