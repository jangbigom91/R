#날짜 : 2020/08/05
#이름 : 최정한
#내용 : R MongoDB 연동

install.packages('mongolite')

library(mongolite)
library(dplyr)
library(ggplot2)
conn <- mongolite::mongo(url='mongodb://cjh:1234@192.168.50.82:27017/cjh',
                         db='cjh',
                         collection = 'movies',
                         verbose = TRUE,
                         options = ssl_options())

df_movies <- conn$find()
View(df_movies)

ggplot(data = df_movies, aes(x=title, y=score)) + geom_count()
