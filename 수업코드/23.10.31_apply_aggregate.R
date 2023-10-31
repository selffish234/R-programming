apply() #벡터 매트릭스 어레이 (instance의 특성이 통일돼 있을때)#purr
lapply() #리스트에서 하나씩 꺼내서 무언가를할때 
sapply()
aggregate()
table()

cut()
greb()
gsub()



#apply
x <- matrix(1:100, nrow = 10, ncol = 10)
apply(x, 2,mean) #숫자 2는 열
apply(x, 1,mean) #숫자 1는 행
apply(x, 2,sum)
apply(x, 2,sum)
mean(11:20)

#lapply
x<- list(a = 1:5, b = 1:10, c = 1:30, d = 10:40, e = 100:1000)
lapply(x, mean)
lapply(x[c(1, 2)],mean)

test <- data.frame(store = 1:3000, rev = 2:3001, profie = 3:3002)
lapply(test[c(2, 3)], mean)

#sapply

x <- list(a = 1:5, b = 1:10)
lapply(x,mean)

sapply(x, mean)

#tapply
tapply(iris$Sepal.Length, iris$Species, mean)
View(iris)
name

View(Titanic)



seg.df<-read.csv("http://goo.gl/qw303p")
str(seg.df)
head(seg.df,10)

attach(seg.df)
mean(income[Segment == "Moving up" & subscribe == "subNo"])

apply(seg.df[,c(1, 3, 4)], 2, mean)
