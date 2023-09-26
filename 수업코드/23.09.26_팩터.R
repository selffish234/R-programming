blood <- c("B", "AB", "O", "A", "O", "O", "A", "B")
blood
blood_factor <- factor(blood) #factor(벡터)
blood_factor
levels(blood_factor)
nlevels(blood_factor)
table(blood_factor)

blood_factor2 <- factor(blood, levels = c("O", "A", "B", "AB"))
#levels 는 범위를 지정해주는 것
blood_factor2
str(blood_factor2)
str(blood_factor)

summary(gender)#요약
plot(gender) #x축이 levels 이 됨
gender=factor(c("Male","Male","Female","Female","Female"))
gender#출력시 ""가 없음

g2=c("Male","Male","Female","Female","Female")
g2

gender=factor(c("Male","Male","Female","Female","Female"),levels=c("Male","Female"),labels=c("M","F"))

gender=factor(c("Male","Male","Man","Woman","Female","Female","Female"),levels=c("Male","Female","Man","Woman"),labels=c("M","F","M","F"))

tshirt <- c("M", "L", "S", "S", "L", "M", "L", "M")
tshirt_factor <- factor(tshirt, ordered = TRUE, levels = c("S", "M", "L"))
tshirt_factor
tshirt_factor[1]<tshirt_factor[2]
