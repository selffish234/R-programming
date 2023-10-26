add <- function(a, b){
  c <- a + b
  return(c)
} # function define

add(3, 2)# function call

add2 <- function(a, b){
  if(a<0|b<0){
    print("negative")
  }
  else{
    c <- a+b
    return(c)
  }
}

isPerfect <- function(n) {
  if (n <= 1) {
    return(FALSE)  # 1 이하의 수는 완전수가 아닙니다.
  }
  
  divisors <- which(n %% 1:(n-1) == 0)  # n의 약수를 찾음
  sum_of_divisors <- sum(divisors) 
  return(n == sum_of_divisors)
}

isPerfect(28)


coef.of.var

함수묶어서 리스트로 나오는것 시험에 나옴
popn.mean.sd 
