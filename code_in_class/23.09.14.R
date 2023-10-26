#1. 데이터 ####
a = 1; a
b = 1:100;b
round(9.13)
i=0
a <- numeric(10)
for(i in 1:10) a[i] <- i^2
print(a)
ceiling(1.41)
floor(1.95)
pi
v1 <- c(4,5)
v1
y <- 10
y
k = 10
k
v1 <- 3
v2 <- c(4,5)
v3 <- 3:11
v4 <- c(v1, v2, v3)
print(v1)
print(v2)
print(v3)
print(v4)
getwd()
#2. 연습하기####
a = 1; a
b = 1:100;b
round(9.13)
i=0
a <- numeric(10)
for(i in 1:10) a[i] <- i^2
print(a)
ceiling(1.41)
floor(1.95)
pi
v1 <- c(4,5)
v1
y <- 10
y
k = 10
k
v1 <- 3
v2 <- c(4,5)
v3 <- 3:11
v4 <- c(v1, v2, v3)
print(v1)
print(v2)
print(v3)
print(v4)
getwd()

b <-c(1, 2, 3)
b
d <- 1:3
d
a <- 10
b <- 20
print(a, b)
cat(a, b,'\n','\n','\n','\n')
cat(a, b)
#3. 질문하기 ####
b <-c(1, 2, 3)
class(b)
b
d <- 1:3
class(d)
pi
getwd()
student_num <- c(9, 3, 8, 9, 8, 6, 6, 13)
min_max <- (student_num-min(student_num))/((max(student_num)-min(student_num)))
min_max                                          
student_num
student_num <- c(9, 3, 8, 9, 8, 6, 6, 13)
min_max <- (student_num-min(student_num))/((max(student_num)-min(student_num)))
min_max 
student_num <- c(9, 3, 8, 9, 8, 6, 6, 13)
min <- min(student_num)
max <- max(student_num)
min_max <- ((student_num - min)/(max-min))
min_max 

NIR <- 11
RED <- 14
NDVI <- ((NIR-RED)/(NIR+RED))
print(NDVI)

NN <- 10
TF <- 8
DF <- 3
tw <- 0.5
n <- 3
j <- 2
# 각각의 변수들에 주어진 값들을 할당
DoV <- (((TF/NN)*1) - (tw*(n-j)))
DoD <- (((DF/NN)*1) - (tw*(n-j)))
# DoV와 DoD라는 변수에 각각의 값을 계산하는 식을 통해 계산된 값을 할당
print(DoV)
print(DoD)
# 저장된 값들을 출력

13 * 2 - 6 / 2
9 %/% 2

11 %% 3

n <- 21 %% 4 # 21 나누기 4의 나머지 1을 n이라는 변수에 할당
print(n)

v5 <- 1:9
length(v5)
