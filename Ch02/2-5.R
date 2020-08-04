#날짜 : 2020/08/03
#이름 : 최정한
#내용 : R 문자열 처리 교재 p84

#R 패키지 설치
install.packages("stringr")

#R 패키지 로드
library(stringr)

#정규표현식
str <- 'hong25이순신31정약용27'

r1 <- str_extract(str, "[1-9]{2}")
r1

r2 <- str_extract_all(str, "[1-9]{2}") #str값에서 1-9중에 연속적인 숫자 2개
r2

r3 <- str_extract_all(str, "[a-z]{3}") # str값에서 a-z중에 연속적인 영어 3자리
r3

r4 <- str_extract_all(str, "[가-힣]{3}") #str값에서 가-힣중에 연속적인 한글 3개
r4

r5 <- str_extract_all(str, "[^0-9]{2}") #str값에서 숫자 연속2자리를 제외한 것 출력 ^=not
r5

#문자열 길이
str_length(str)
str_sub(str, 1, 5)
str_replace(str, '이순신', 'LeeSoonSin')

#문자열벡터
str_vec <- c('김유신', '김춘추', '강감찬', '이순신')
str_vec

str_collapse <- paste(str_vec, collapse = ',')
str_collapse




