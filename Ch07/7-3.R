#날짜 : 2020/08/06
#이름 : 최정한
#내용 : R 데이터분석 상관분석 실습하기

install.packages('corrplot')
install.packages('corrgram')

library(corrplot)
library(corrgram)

df_product <- read.csv('../file/product.csv')
View(df_product)

#변수 간 상관계수 확인
cor(df_product$제품_친밀도, df_product$제품_적절성)
cor(df_product$제품_친밀도, df_product$제품_만족도)
cor(df_product$제품_적절성, df_product$제품_만족도)

#상관계수 행렬
cor(df_product, method = 'pearson')

#상관관계 시각화
pairs(df_product)
corrgram(df_product, lower.panel = panel.conf)

#도전 붓꽃데이터 상관분석
View(iris)

#Species 제외
df_iris <- iris %>% select(-Species)
View(df_iris)

#변수 간 상관계수 확인
cor(df_iris$Sepal.Length, df_iris$Sepal.Width)
cor(df_iris$Sepal.Length, df_iris$Petal.Length)
cor(df_iris$Sepal.Length, df_iris$Petal.Width)
cor(df_iris$Sepal.Width, df_iris$Petal.Width)
cor(df_iris$Sepal.Width, df_iris$Petal.Length)

#상관계수 행렬
cor(df_iris, method = 'pearson')

#상관관계 시각화화
pairs(df_iris)
corrgram(df_iris, lower.panel = panel.conf)
         