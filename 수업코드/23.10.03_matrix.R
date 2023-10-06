x <- matrix(0, nrow = 3, ncol = 4)
x
m <- matrix(1:12, 3, byrow=T)
m
m2<- matrix(1:12, 3)
m2
m3 <- matrix(1:12, ncol = 3, byrow=T)
m3

x <- 1:15
dim(x) <- c(3, 5)
x
class(x)

a <- 1:15
m4 <- matrix(a, 3)
m4

colnames()
rownames()

dim(a) <- c(3, 5)
a
colnames(a) <- paste0("a", 1:5)
rownames(a) <- paste0("b", 1:3)
a
names(a) <- paste0("c", 1:15)
a
a["c1"]
a[1,1]
a["b1", "a1"]

x <- 1:3
y <- 10:12
cbind(x, y)#새로운 속성 추가시
rbind(x, y)#새로운 데이터 추가시

mat4 <- matrix(1:9, 3)
mat4
mat4 <- rbind(mat4, c(1, 2, 3))
mat4 <- cbind(mat4, c(1, 2, 3))
mat4
mat4[1:2, 2:3]
mat4[1:2, 3]
mat4[c(T, T, F, F), c(F, F, T, F)]
colnames(mat4) <- paste0("c", 1:4)
rownames(mat4) <- paste0("r", 1:4)
mat4
mat4[c("r1", "r2"), c("c2", "c3")]
mat4[-3,]

a <- array(1:18, dim = c(3, 3, 2))
a
mode(a)
a[4]
