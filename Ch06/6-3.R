#날짜 : 2020/08/05
#이름 : 최정한
#내용 : R Hadoop연동

devtools::install_github(c("saurfang/rwebhdfs"))
library(rwebhdfs)

hdfs <- webhdfs('192.168.100.101', 50070, 'root')

#에러남
df_sales2017 <- read_file(hdfs, '/sample/sales2017.csv')

