i <-1
while(){
  print(i)
} #while(조건) 그리고 뒤에는 실행할 

while(i<100){
  if(i>50){
    break;
  }
  print(i)
  i<-i+1
}

i<-100
while(i>0.01){
  i <- i-runif(1, min=-0.001, max=0.01)
  cat("\n", i)
}
#몇번의 반복작업을 해야하는지를 모르나 어떠한 조건을 두고 그 조건을 달성할때까지 반복이 필요할 때 while 문을 쓴다.
? exp
log(exp(1))
log1(1)
