m <- matrix(1:15, ncol = 3, byrow = T)

m2 <- data.frame(m) 

m2

m2[,1] #데이터 프레임 m2의 1열을 호출


cbind(m2, c(3, 2, 4, 5, 5 ))
#m2라는 데이터프레임의 열에 c(3, 2, 4, 5, 5)를 합침
rbind(m2, c(3, 2, 4, 5))
#m2라는 데이터프레임의 행에 c(3, 2, 4, 5, 5)를 합침
cbind(m2, m2) 
#m2 열에 m2 한번 더 합치기
rbind(m2, m2)
#m2 행에 m2 한번 더 합치기


#for문
for(i in 1:10){
  print(i)
}
#1~10 돌 동안 계속 i를 프린트


m3 <- NULL
#비어있는 변수 m3 생성
for(i in 1:10){
  m3 <- rbind(m3,m2)
  print(i)
  print(dim(m3))
}
#i가 1:10 될때까지 데이터프레임 m2를 밑에 행으로 계속 합침

## if문
m3 <-NULL
for(i in 1:10){
  
  if(i %% 2 == 0){
    next; #만약 i 가 짝수면 넘어가고
  }
  m3 <- rbind(m3, m2) # i가 홀수면 비어있는 m3와 데이터 프레임 m2를 더함
  cat("\n",i) #print 와 기능 동일, 한줄씩 출력
  
}
m3

m3 <-NULL
for(i in 1:10){
  
  if(i %% 2 == 0){ #만약 i 가 짝수면 넘어가고
  }else{#아니면 (i가 홀수면) 비어있는 m3와 데이터 프레임 m2를 더함
  m3 <- rbind(m3, m2)
  }
  cat("\n",i) #print 와 기능 동일, 한줄씩 출력
  
}
m3
