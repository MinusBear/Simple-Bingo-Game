Game <- function() {
  ANSWER <- readline("Do you want to start the game?")
  if (ANSWER == "OK")
    print("Game Start!")
  else
    print("Unable to start game")
}

B <- if(interactive()) Game()
if((B=="Game Start!")==T){  
  #저장되어 있는 R 스크립트 불러오기
}

print("scissors, rock, paper 게임을 실행합니다.")
student1 <- readline('insert plseas : ')
student2 <- readline('insert plseas : ')


if(student1 == "rock" & student2 == "rock"){
  print("tie. Try again!")
  user1<-"NaN"
  user2<-"NaN"
}else if(student1 == "rock" & student2 == "scissors"){
  print("Student1 win, student2 loss")
  user1 <- c("student1")
  user2 <- c("student2")
}else if(student1 == "rock" & student2 == "paper"){
  print("Student1 loss student2 win")
  user2 <- c("student1")
  user1 <- c("student2")
}else if(student1 == "paper" & student2 == "paper"){
  print("tie. Try again")
  user1<-"NaN"
  user2<-"NaN"
}else if(student1 == "paper" & student2 == "scissors"){
  print("Student1 loss student2 win")
  user1 <- c("student2")
  user2 <- c("student1")
}else if(student1 == "paper" & student2 == "rock"){
  print("Student1 win student2 loss")
  user2 <- c("student2")
  user1 <- c("student1")
}else if(student1 == "scissors" & student2 == "scissors"){
  print("tie. Try again")
  user1<-"NaN"
  user2<-"NaN"
}else if(student1 == "scissors" & student2 == "rock"){
  print("Student1 loss student2 win")
  user2 <- c("student1")
  user1 <- c("student2")
}else if(student1 == "scissors" & student2 == "paper"){
  print("Student1 win student2 loss")
  user1 <- c("student1")
  user2 <- c("student2")
}

#user1이 첫번째 차례입니다.
user1
user2

number <- c(1:25)
bf <- sample(number,size = 25,replace = F)
user1 <- matrix(data=bf,nrow = 5)
(user1 <- as.data.frame(user1))
bf <- sample(number,size = 25,replace = F)
user2 <- matrix(data=bf,nrow = 5)
(user2 <- as.data.frame(user2))
user1
user2


A <- readline('insert plseas : ')

if((which(A==user1) %% 5) == 0){
  x <- 5
} else {
  x <- which(A==user1) %% 5
}
if((which(A==user1) %% 5) == 0){
  y <- which(A==user1) %/% 5
} else {
  y <- (which(A==user1) %/% 5) + 1
}
user1[x,y] <- 0
if((which(A==user2) %% 5) == 0){
  x <- 5
} else {
  x <- which(A==user2) %% 5
}
if((which(A==user2) %% 5) == 0){
  y <- which(A==user2) %/% 5
} else {
  y <- (which(A==user2) %/% 5) + 1
}
user2[x,y] <- 0
user1
user2

A <- readline('insert plseas : ')


if((which(A==user2) %% 5) == 0){
  x <- 5
} else {
  x <- which(A==user2) %% 5
}
if((which(A==user2) %% 5) == 0){
  y <- which(A==user2) %/% 5
} else {
  y <- (which(A==user2) %/% 5) + 1
}
user2[x,y] <- 0
if((which(A==user1) %% 5) == 0){
  x <- 5
} else {
  x <- which(A==user1) %% 5
}
if((which(A==user1) %% 5) == 0){
  y <- which(A==user1) %/% 5
} else {
  y <- (which(A==user1) %/% 5) + 1
}
user1[x,y] <- 0
user2
user1  

#user1 가로 합
a1 <- sum(user1[1,1:5])==0
b1 <- sum(user1[2,1:5])==0
c1 <- sum(user1[3,1:5])==0
d1 <- sum(user1[4,1:5])==0
e1 <- sum(user1[5,1:5])==0
#user1 세로 합
f1 <- sum(user1[1:5,1])==0
g1 <- sum(user1[1:5,2])==0
h1 <- sum(user1[1:5,3])==0
i1 <- sum(user1[1:5,4])==0
j1 <- sum(user1[1:5,5])==0
#user1 대각선 합
k1 <-sum(user1[1,1]+user1[2,2]+user1[3,3]+user1[4,4]+user1[5,5])==0
l1 <-sum(user1[1,5]+user1[2,4]+user1[3,3]+user1[4,2]+user1[5,1])==0

if(sum(c(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1))==1){
  print("한줄빙고")
} else if(sum(c(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1))==2){
  print("두줄빙고")
} else if(sum(c(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1))==3){
  print("세줄빙고")
} else if (sum(c(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1))==0){
  print("빙고없음")
}

#user2 가로 합
a2 <- sum(user2[1,1:5])==0
b2 <- sum(user2[2,1:5])==0
c2 <- sum(user2[3,1:5])==0
d2 <- sum(user2[4,1:5])==0
e2 <- sum(user2[5,1:5])==0
#user2 세로 합
f2 <- sum(user2[1:5,1])==0
g2 <- sum(user2[1:5,2])==0
h2 <- sum(user2[1:5,3])==0
i2 <- sum(user2[1:5,4])==0
j2 <- sum(user2[1:5,5])==0
#user2 대각선 합
k2 <-sum(user2[1,1]+user2[2,2]+user2[3,3]+user2[4,4]+user2[5,5])==0
l2 <-sum(user2[1,5]+user2[2,4]+user2[3,3]+user2[4,2]+user2[5,1])==0
if(sum(c(a2,b2,c2,d2,e2,f2,g2,h2,i2,j2,k2,l2))==1){
  print("한줄빙고")
} else if(sum(c(a2,b2,c2,d2,e2,f2,g2,h2,i2,j2,k2,l2))==2){
  print("두줄빙고")
} else if(sum(c(a2,b2,c2,d2,e2,f2,g2,h2,i2,j2,k2,l2))==3){
  print("세줄빙고")
} else if (sum(c(a2,b2,c2,d2,e2,f2,g2,h2,i2,j2,k2,l2))==0){
  print("빙고없음")
}

if(user1_bingo=="세줄빙고"){
  print("user1의 승으로 빙고게임이 끝났습니다.")
} else if(user2_bingo=="세줄빙고"){
  print("user2의 승으로 빙고게임이 끝났습니다.")
}

