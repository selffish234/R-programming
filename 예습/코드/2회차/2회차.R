# vector = column, c(안에 넣고 , 쓰기)
## () <- 함수를 의미함
a <- c(50, 20, 30)
#콘솔창에서 + 가 나온다면 무언가 닫히지 않았다는것을 의미
#실행취소는 esc
a[1]
#a방 첫번째 : 50
a[2]
#a방 두번째 : 20
b <-c(1, 2, 3)
a+b
#결과는 50+1, 20+2, 30+3
a+1
#결과는 50+1, 20+1, 30+1
b *2
#결과는 1*2, 2*2, 3*2

a<-c("aa", "bb", "cc")
a[1]
#a방 첫번째 : "aa"
a[2]
#a방 두번째 : "bb"
a[3]
#a방 세번째 : "cc"
a[c(1, 2)]
#a의 첫번째 방과 두번째 방 : "aa", "bb"
a[c(1, 2, 3)]
#결과: "aa" "bb" "cc"
a[c(3, 2, 1)]
#결과: "cc" "bb" "aa"
a[1:3]
1:3 ## : ~부터 ~까지 
#결과 : "aa" "bb" "cc"

a[-1]
# bb", "cc"
a[-3]
# "aa", "bb"
a[-2]
# "aa", "cc"
a[-c(1,3)]
# "bb"
a[-c(1:2)]
# "cc"
a[-c(1,2)]
# "cc"


a[c(T, T, F)] ##"aa" "bb"

a == "aa" ##TRUE FALSE FALSE
a[a== "aa"] #a의 값들중 a == "aa" 값이 TRUE 인것만 가져옴

a <- 1:100
a
a %% 2 == 0 ##a의 값들을 2로 나눴을때 나머지가 0 인것들은 TRUE, 아닌 값은 FALSE 값을 반환
a[a%%2 == 0] ## TRUE 인 값들만 반환 (짝수)
a[a%%2 == 1] ## TRUE 인 값들만 반환 (홀수)
