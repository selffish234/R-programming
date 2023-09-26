url <- "https://www.ajou.ac.kr/kr/ajou/notice.do?mode=list&&articleLimit=10&article.offset="
portal <- paste0(url, seq(from=0, to=90, by=10))
portal

v <- c("a", "b", "c", "d", "e")
v[c(1, 3)]                 
v[seq(1, 3, by=2)]
v[(3:5)]
v()
v[c(3, 4, 5)]
v[-1]#1번째 방을 제외
L <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
v[L] #TRUE 에 
v[c(T,F,T,F,F)]

k <- 1:100
names(k) <- c("name", k)
mean(k)
k[k>mean(k)] #논리 연산을 이용하여 평균보다 큰 값만 출력해줌

player <- c("조영욱", "엄원상", "고영준", "정우영", "정호연", "백승호", "박진섭")
player_height <- c(178, 173, 168, 180, 180, 182, 184)
player_team <- c("김천 상무 FC", "울산 현대", "포항 스틸러스", "VfB 슈투트가르트", "광주 FC", "전북 현대 모터스", "전북 현대 모터스")
player_age <- c(24, 24, 22, 23, 22, 26, 27)
# 문제 2
names(player) <- c(10, 11, 13, 7, 15, 8, 4)
player

names(player_num) <- paste0(player,player_num)
player_num
names(player_num) <- paste0(player, c(10, 11, 13, 7, 15, 8, 4))
player
# 문제 3
player[player_age>24]
# 문제 4
player[player_team == "전북 현대 모터스"]
# 문제 5
names(b) <- c(2015:2020)
---------------------------------------------
  # PR3 연습문제
  ## 문제 1
  url <- "https://www.ajou.ac.kr/kr/ajou/notice.do?mode=list&&articleLimit=10&article.offset="
portal <- paste0(url, seq(from=0, to=90, by=10))
portal
```
## 문제
player <- c("조영욱", "엄원상", "고영준", "정우영", "정호연", "백승호", "박진섭")
player_height <- c(178, 173, 168, 180, 180, 182, 184)
player_team <- c("김천 상무 FC", "울산 현대", "포항 스틸러스", "VfB 슈투트가르트", "광주 FC", "전북 현대 모터스", "전북 현대 모터스")
player_age <- c(24, 24, 22, 23, 22, 26, 27)
## 문제 2
names(player) <- c(10, 11, 13, 7, 15, 8, 4)
player
## 문제 3
player[player_age>24]
## 문제 4
player[player_team == "전북 현대 모터스"]
## 문제 5
player[player_height>=180]
## 문제 6
mean(player_age)
## 문제 7
player[player_age == max(player_age)]
