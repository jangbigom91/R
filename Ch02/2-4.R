#날짜 : 2020/08/03
#이름 : 최정한
#내용 : R 자료구조 리스트 교재 p74

x1 <- seq(1:5)
x2 <- matrix(c(1,2,3,4,5,6), nrow=2)
x3 <- data.frame(col1=c(1,2), col2=c('김유신', '김춘추'))

x1
x2
x3

list <- list(e1=x1, e2=x2, e3=x3)
list$e1[3]
list$e2[1,2]
list$e3$col2[2]

