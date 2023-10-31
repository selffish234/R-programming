x <- 5
test <- function() {
  cat(x+5) #x는 전역변수(global environment)
}
test();

x <- 10
test <- function(){
  x <- 5
  cat(x + 20)
}
test() #print25 x 지역변수 x 5
cat(x + 20) # 전역변수 x 10


x <- 10
test <- function(x){
  x <- x + 10 
  cat(x)
}
test(x)
cat(x)

x <- 10
test <- function(x){
  x <<- x + 10 #밖에 있는 전역변수를 변경하는 것 내부 지역변수에는 영향이 없음
  cat(x)
}
test(x)
cat(x)



