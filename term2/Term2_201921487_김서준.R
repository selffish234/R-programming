library(tidyverse)
library(lubridate)
library(dplyr)
library(ggplot2)

setwd("C:/UnivStudy/UnivLectures/23-2/R-programming/Works/term2")
getwd()

data1 <- read.csv('data/all.csv', fileEncoding = 'UTF-8')
head(data1)

data2 <- read.csv('data/pm.csv', fileEncoding = 'UTF-8')
head(data2)

data1 <- data1[apply(data1, 1, function(row) all(row != "")), ]
data1 <- data1[apply(data1, 1, function(row) all(row != "기타불명")), ]

data2 <- data2[apply(data2, 1, function(row) all(row != "")), ]

# 날짜 및 시간 분리
data1$사고일시 <- as.character(data1$사고일시)  # 문자열로 변환

# 형식을 직접 지정하여 날짜와 시간을 나누어 각각의 컬럼으로 저장
data1$사고일시 <- parse_date_time(data1$사고일시, orders = "YmdH")
data1$년 <- year(data1$사고일시)
data1$월 <- month(data1$사고일시)
data1$일 <- day(data1$사고일시)
data1$시간 <- hour(data1$사고일시)

# 날짜 및 시간 분리
data2$사고일시 <- as.character(data2$사고일시)  # 문자열로 변환

# 형식을 직접 지정하여 날짜와 시간을 나누어 각각의 컬럼으로 저장
data2$사고일시 <- parse_date_time(data2$사고일시, orders = "YmdH")
data2$년 <- year(data2$사고일시)
data2$월 <- month(data2$사고일시)
data2$일 <- day(data2$사고일시)
data2$시간 <- hour(data2$사고일시)

remove_and_convert <- function(age_str) {
  as.integer(gsub("세", "", age_str))
}

# 데이터프레임에서 "가해운전자.연령" 컬럼 수정
data1 <- data1 %>%
  mutate(가해운전자.연령 = remove_and_convert(가해운전자.연령))

remove_and_convert <- function(age_str) {
  as.numeric(gsub("세", "", age_str))
}

# 데이터프레임에서 "가해운전자.연령" 컬럼 수정
data2 <- data2 %>%
  mutate(가해운전자.연령 = remove_and_convert(가해운전자.연령))


# 연령을 범주로 나누는 함수 정의
age_category <- function(age) {
  if (age %in% 0:9) {
    return("10세 미만")
  } else if (age %in% 10:19) {
    return("10대")
  } else if (age %in% 20:29) {
    return("20대")
  } else if (age %in% 30:39) {
    return("30대")
  } else if (age %in% 40:49) {
    return("40대")
  } else if (age %in% 50:59) {
    return("50대")
  } else if (age %in% 60:69) {
    return("60대")
  } else {
    return("70세 이상")
  }
}

# 데이터프레임에서 가해운전자.연령을 범주로 변환
data2 <- data2 %>%
  mutate(연령대 = case_when(
    between(as.numeric(가해운전자.연령), 0, 9) ~ "10세 미만",
    between(as.numeric(가해운전자.연령), 10, 19) ~ "10대",
    between(as.numeric(가해운전자.연령), 20, 29) ~ "20대",
    between(as.numeric(가해운전자.연령), 30, 39) ~ "30대",
    between(as.numeric(가해운전자.연령), 40, 49) ~ "40대",
    between(as.numeric(가해운전자.연령), 50, 59) ~ "50대",
    between(as.numeric(가해운전자.연령), 60, 69) ~ "60대",
    TRUE ~ "70세 이상"
  ))

# 결과 확인
head(data2)


# 데이터프레임에서 시군구 별로 그룹화하고 교통사고 발생 횟수 계산
accidents_by_district <- data.frame(data1 %>%
                                      group_by(시군구) %>%
                                      summarise(해당_시군구_교통사고_횟수 = n()))

# 결과 확인
head(accidents_by_district)

# 데이터프레임에서 시군구 별로 그룹화하고 교통사고 발생 횟수 계산
accidents_by_district2 <- data.frame(data2 %>%
                                       group_by(시군구) %>%
                                       summarise(해당_시군구_PM교통사고_횟수 = n()))

# 결과 확인
head(accidents_by_district2)

# 사고유형 컬럼 수정
data2 <- data2 %>%
  mutate(사고유형 = ifelse(grepl("차대차", 사고유형), "차대차", "차대사람"))

# 도로형태 컬럼을 기반으로 분류
data2 <- data2 %>%
  mutate(도로형태 = case_when(
    grepl("단일로", 도로형태) ~ "단일로",
    grepl("교차로", 도로형태) ~ "교차로",
    grepl("기타", 도로형태) ~ "기타"
  ))
head(data2)

# 도로형태별로 사망사고 발생 횟수 계산
fatal_accidents_by_road_type <- data2 %>%
  filter(사고내용 == "사망사고") %>%
  group_by(도로형태) %>%
  summarise(Fatal_Accident_Count = n())

fatal_accidents_by_road_type

# data2와 accidents_by_district를 시군구를 기준으로 left join
data2 <- left_join(data2, accidents_by_district, by = "시군구")

# 결과 확인
head(data2)

#accidents_by_district2, accidents_by_district를 시군구 기준으로 left join
result_df <- left_join(accidents_by_district2, accidents_by_district, by = "시군구")
head(result_df)

# 데이터프레임에서 연령대별로 그룹화하고 PM사고 발생 횟수 및 비율 계산
accidents_by_age_group <- data2 %>%
  group_by(연령대) %>%
  summarise(Accident_Count = n()) %>%
  mutate(Percentage = (Accident_Count / sum(Accident_Count)) * 100)

# ggplot2를 사용하여 연령대별 PM 교통사고 발생 횟수 및 비율 시각화
ggplot(accidents_by_age_group, aes(x = 연령대, y = Percentage)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  geom_text(aes(label = sprintf("%.1f%%", Percentage)), vjust = -0.5, size = 4) + 
  labs(title = "연령대별 PM교통사고 발생 횟수 및 비율", x = "연령대", y = "비율 (%)") +
  theme_minimal()

# 상위 10개 시군구 선택
top_n_districts <- result_df %>%
  arrange(desc(해당_시군구_교통사고_횟수)) %>%
  head(10)

# PM교통사고 횟수에 5를 곱하여 새로운 열 추가
top_n_districts <- top_n_districts %>%
  mutate(해당_시군구_PM교통사고_횟수_scaled = 해당_시군구_PM교통사고_횟수 * 30)

# 교통사고 수를 기준으로 시군구 정렬
top_n_districts$시군구 <- reorder(top_n_districts$시군구, top_n_districts$해당_시군구_교통사고_횟수)

# 시군구 라벨에서 마지막 3글자만 표시
top_n_districts$시군구_label <- substr(as.character(top_n_districts$시군구), nchar(as.character(top_n_districts$시군구)) - 2, nchar(as.character(top_n_districts$시군구)))

top_n_districts$시군구_label <- reorder(top_n_districts$시군구_label, top_n_districts$해당_시군구_교통사고_횟수)

# 막대 그래프 그리기
ggplot(top_n_districts, aes(x = 시군구_label)) +
  geom_bar(aes(y = 해당_시군구_교통사고_횟수, fill = "교통사고"), stat = "identity", position = position_dodge(width = 0.8), alpha = 0.7) +
  geom_bar(aes(y = 해당_시군구_PM교통사고_횟수_scaled, fill = "PM교통사고"), stat = "identity", position = position_dodge(width = 0.8), alpha = 0.7) +
  geom_text(aes(y = 해당_시군구_교통사고_횟수, label = 해당_시군구_교통사고_횟수), vjust = -0.5, size = 4, position = position_dodge(width = 0.8)) +
  labs(title = "교통사고 발생 상위 10개 시군구의 PM교통사고 횟수와 교통사고 횟수 비교",
       x = "시군구",
       y = "사고 횟수",
       fill = "사고 종류") +
  scale_fill_manual(values = c("교통사고" = "orange", "PM교통사고" = "blue"), guide = guide_legend(title = "사고 종류")) +
  theme_minimal() +
  theme(axis.text.y = element_blank(), axis.title.y = element_blank(), axis.ticks.y = element_blank())


# 사고유형별 교통사고 발생 횟수 계산
accidents_by_type <- data2 %>%
  group_by(사고유형) %>%
  summarise(Accident_Count = n())

# ggplot2를 사용하여 사고유형별 교통사고 발생 횟수 시각화
ggplot(accidents_by_type, aes(x = as.factor(사고유형), y = Accident_Count, fill = 사고유형)) +
  geom_bar(stat = "identity", position = "dodge", color = "black") +
  geom_text(aes(label = Accident_Count), vjust = -0.5, size = 4, position = position_dodge(width = 0.9)) +  
  labs(title = "사고유형별 교통사고 발생 횟수",
       x = "사고 유형",
       y = "사고 발생 횟수") +
  scale_fill_manual(values = c("차대차" = "blue", "차대사람" = "orange")) + 
  theme_minimal()+
  theme(axis.text.x = element_text(hjust = 1, size = 15))

# 법규위반별 교통사고 발생 횟수 계산
accidents_by_violation <- data2 %>%
  group_by(법규위반) %>%
  summarise(Accident_Count = n())

# ggplot2를 사용하여 법규위반별 교통사고 발생 횟수 시각화
ggplot(accidents_by_violation, aes(x = as.factor(법규위반), y = Accident_Count)) +
  geom_bar(stat = "identity", position = "dodge", fill = "skyblue", color = "black") +
  geom_text(aes(label = Accident_Count), vjust = -0.5, size = 4, position = position_dodge(width = 0.9)) + 
  labs(title = "법규위반별 교통사고 발생 횟수",
       x = "법규위반",
       y = "사고 발생 횟수") +
  theme_minimal()+
  theme(axis.text.x = element_text(angle = 0, size = 10))

# 도로형태별 교통사고 발생 횟수 계산
accidents_by_road_type <- data2 %>%
  group_by(도로형태) %>%
  summarise(Accident_Count = n())

# ggplot2를 사용하여 도로형태별 교통사고 발생 횟수 시각화
ggplot(accidents_by_road_type, aes(x = as.factor(도로형태), y = Accident_Count)) +
  geom_bar(stat = "identity", fill = "orange", color = "black") +
  geom_text(aes(label = Accident_Count), vjust = -0.5, size = 4) +
  labs(title = "도로형태별 교통사고 발생 횟수",
       x = "도로형태",
       y = "사고 발생 횟수") +
  theme_minimal()+
  theme(axis.text.x = element_text(angle = 0, size = 13))
