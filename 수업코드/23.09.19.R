a <-'1';class(a);a
b <- 1L;class(b);b
c <- "1";class(c);c
d <- 1.0;class(d);d

"first"
first
sum(1, 2, 3, NA)
sum(1, 2, 3, NA, na.rm=T)
x <- character(10)
x
x <- c(1, 2, 3, 4, 5)
y <- 1:5
y
#1에서 10까지 숫자를 생성해서 벡터x에 입력하세요.
x <- c(1,2, 3, 4, 5, 6, 7, 8, 9, 10);x
x <- seq(from=0, to=10, by=2);x
x <- seq(1, 10, 1);x
x <- 1:10;x

#빈 문자열 10개 만들기
x <- character(10)

#수열생성을 위한 rep() 함수
#x <- rep(x, each, times, length.out)
x<- rep(c(1, 2), times=100);x
x<- rep(1:5, times=100);x
k<- seq((1:20), by=4);k
#append
a<-c("한국", "중국", "일본")
a[1]
a <- append(a, "독일");a
#개별원소에 이름부여 names 함수
b <- c(5, 6, 7, 8, 9, 10)
names(b) <- c(2015:2020)
b["2015"]
#문자결합을 위함 함수 paste()
paste(1:5, 'y', sep='-')
paste('y', 1:5,  sep='-')
paste(1:5, 'a')
paste0(1:5, "a")
url <- "https://www.ajou.ac.kr/ebiz/board/board.do?mode=list&&articleLimit=10&article.offset="
paste0(url, c(10, 20, 30))
