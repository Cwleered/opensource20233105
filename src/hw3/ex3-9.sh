db_file="DB.txt"

# 사용자로부터 이름 입력 받기
read -p "검색할 이름을 입력하세요: " search_name

# DB.txt 파일이 존재하는지 확인
if [ ! -f "$db_file" ]; then
  echo "DB.txt 파일이 존재하지 않습니다."
else
  # 이름으로 정보 검색 및 출력
  result=$(grep -i "^$search_name," "$db_file")

  if [ -n "$result" ]; then
    echo "검색 결과:"
    echo "$result"
  else
    echo "검색 결과가 없습니다."
  fi
fi
