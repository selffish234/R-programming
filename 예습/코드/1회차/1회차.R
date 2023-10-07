a=1
#a 라는 변수에 1이라는 값을 대입
a <- 2 
#a 라는 변수에 2라는 값을 대입 R 에서는 = 과 <- 의 기능이 같지만 <- 을 더 많이 씀
a == 1
#a 라는 변수는 1과 같다 == 은 같다는 의미이며 이전 코드에서 마지막에 a <- 2 로 a에 2의 값을 대입했으므로 a == 1 실행 시 FALSE 가 나온다. 
a == 2
#a == 2 실행 시 TRUE 가 나온다.
a != 1
#! 는 아니다 라는 의미이며 현재 a 라는 변수안에 2라는 값이 있으므로 TRUE 가 나온다. 
a > 1
#그냥 >, < 는 크고 작음을 말해주는 부등호 기호로 사용됨
a <- "abc"
#a라는 변수에 “character”형 변수 “abc” 대입 
abc <- 2
#"abc" 라는 변수에 2라는 “numeric”형 변수 대입
b <- "abcd"
#b라는 변수에 “character”형 변수 “abcd” 대입
class(abc)
#변수의 자료형을 알려주는 함수 class( ), class(b)는 변수 b의 자료형을 물어보는 것이며 결과는 “numeric”이다.
class(a)
#결과는 “numeric” 이다.
a2 <- as.character(a)
#a2 라는 변수에 “numeric”형태인 a를 as.character( ) 를 통해 문자형으로 변환시켜 대입시킨다.
class(a2)
#a2 의 자료형은 “character”형
a3 <-as.numeric(a2)
#a3 이라는 변수에 “character”형태인 a2를 as.numeric( ) 를 통해 정수형으로 변환시켜 대입시킨다.
class(a3)
#a3의 자료형은 “numeric”
