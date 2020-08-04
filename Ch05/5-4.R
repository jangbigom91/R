#날짜 : 2020/08/04
#이름 : 최정한
#내용 : 데이터시각화 - 기타그래프 교재 p141

library(ggplot2)

View(iris)

#산점도
ggplot(data=iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point(aes(color = Species))

#라인그래프
View(economics)
ggplot(data=economics, aes(x = date, y = unemploy)) + geom_line()

#박스플롯
View(mpg)
summary(mpg)
ggplot(data=mpg, aes(x=drv, y=hwy)) + geom_boxplot()

#히스토그램
hist(iris$Sepal.Width,
     xlim = c(2.0, 4.5),
     xlab = '꽃받침 길이',
     col = 'orange',
     freq = F,
     main = '꽃받침 길이 분포도')

#정규분포 라인
lines(density(iris$Sepal.Width), col='red')
