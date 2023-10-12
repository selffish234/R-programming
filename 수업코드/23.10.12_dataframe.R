name <- c("Anne", "Pete", "Frank", "Julia", "Cath")
age <- c(28, 30, 21, 39, 35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE)
people <- data.frame(name, age, child)
class(people);str(people)
people

rownames(people) <- paste0("s", 1:5)
people

people[3,2]
people[3, "age"]

people["s3",]
people[3,]
people[,"age"]

people(c(3, 5), c("age", "child"))

people['s3', 'age']

people[age<30 & child == T, c('name', 'age')]
people[age>30,]
people$name[age>30]

people[[3]] # 벡터값 보기
class(people[[3]])
class(people[3])

people$height <-c(163, 177, 163, 162, 157);people
people1 <- people
people1$birthyear <- paste0(198, 1:5); people1
weight <- c(74, 63, 68, 55, 56)
cbind(people, weight)

sort(people$age)
people

people[order(people$age, decreasing = T),]


mtcars #4가지 함수가 필수이다.
class(mtcars)
str(mtcars)
head(mtcars)
tail(mtcars)
mean(mtcars$mpg)

cor(mtcars$mpg, mtcars$wt)
attach(mtcars)
mean(mpg)

summary(mtcars)

install.packages("tidyverse")
library(tidyverse)
mt1 <- as_tibble(mtcars);mt1

people$name[age<30]
subset(people, age<30, c(age, name))
