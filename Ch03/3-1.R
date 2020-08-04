#날짜 : 2020/08/04
#이름 : 최정한
#내용 : CSV파일 데이터프레임 생성

df_exam <- read.csv('../file/exam.csv')

#View() - 데이터프레임 테이블로 출력
View(df_exam)

#head(), tail() - 상위, 하위 6개 데이터 미리보기
head(df_exam)
tail(df_exam)

#dim() - 데이터프레임 구조확인
dim(df_exam)

#str() - 데이터프레임 속성확인
str(df_exam)

#summary() - 데이터프레임 요약통계
summary(df_exam)

