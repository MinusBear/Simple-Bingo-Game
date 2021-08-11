## R Game Project - source code

~~~R
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

~~~
R에 readline함수는 사용자에게 입력을 받은 값을 특정변수에 저장하기 위한 함수로써 사용된다. if 문을 통하여 ANSWER에 사용자로부터 받은 값을 비교하여 게임의 시작 여부를 결정한다. 게임 스타트가 된다면 저장된 R 스크립트를 불러온다.
~~~
Do you want to start the game? OK
[1] "Game Start!"

~~~

~~~R
print("scissors, rock, paper 게임을 실행합니다.")
student1 <- readline('insert plseas : ')
student2 <- readline('insert plseas : ')
~~~

게임 시작에 앞서 user1과 user2를 결정하기 위해 가위바위보 게임을 실행한다.
student1과 2에 순서 상관없이 자신의 가위, 바위, 보 세가지 경우를 입력한다.

~~~
> student1 <- readline('insert plseas : ')
insert plseas : paper
> student2 <- readline('insert plseas : ')
> insert plseas : scissors
> student1
[1] "paper"
> student2
[1] "scissors"
~~~
~~~R
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
~~~
각 사용자의 입력값을 비교하여 승패를 결정한다. 승리할 경우 user1로 입력되고, 패배할 경우 user2로 입력된다.
~~~
[1] "Student1 loss student2 win"
~~~
~~~R
#user1이 첫번째 차례입니다.
user1
user2
~~~
user1과 user2를 출력하여 사용자들은 자신의 순서를 파악한다.
~~~
> user1
[1] "student2"
> user2
[1] "student1"
~~~
~~~R
number <- c(1:25)
bf <- sample(number,size = 25,replace = F)
user1 <- matrix(data=bf,nrow = 5)
(user1 <- as.data.frame(user1))
bf <- sample(number,size = 25,replace = F)
user2 <- matrix(data=bf,nrow = 5)
(user2 <- as.data.frame(user2))
user1
user2
~~~
1~25까지의 숫자를 비복원으로 랜덤추출하여 사용자들의 데이터프레임을 각각 생성합니다.
~~~
> user1
  V1 V2 V3 V4 V5

1 10  3 21 18 19
2  6 20 13  8 12
3 17  1 16 14  5
4 24 15 22  4 11
5 25 23  7  2  9

> > user2
  V1 V2 V3 V4 V5
1  5 11  9  4  7
2 13 24 20 22  1
3  2 18  3 19 23
4 10  6  8 16 25
5 17 15 21 12 14
~~~
~~~R
user1 순서(1)
A <- readline('insert plseas : ')
~~~
~~~
> A <- readline('insert plseas : ')
insert plseas : 3
~~~
~~~R
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
~~~
앞서 언급한 게임 원리에 따라 user1이 부른 숫자는 Which 함수를 이용해 위치를 파악합니다. 부른 숫자를 파악한 위치에 따라 user1과 user2의 숫자는 0으로 전환됩니다.
~~~
> user1
  V1 V2 V3 V4 V5
1 10  0 21 18 19
2  6 20 13  8 12
3 17  1 16 14  5
4 24 15 22  4 11
5 25 23  7  2  9
> user2
  V1 V2 V3 V4 V5
1  5 11  9  4  7
2 13 24 20 22  1
3  2 18  0 19 23
4 10  6  8 16 25
5 17 15 21 12 14
~~~
~~~R
user2 순서(2)
A <- readline('insert plseas : ')
~~~
~~~
> A <- readline('insert plseas : ')
insert plseas : 24
~~~
~~~R
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
~~~
앞서 언급한 게임 원리에 따라 user2가 부른 숫자는 Which 함수를 이용해 위치를 파악합니다. 부른 숫자를 파악한 위치에 따라 user1과 user2의 숫자는 0으로 전환됩니다.
~~~
> user2
  V1 V2 V3 V4 V5
1  5 11  9  4  7
2 13  0 20 22  1
3  2 18  0 19 23
4 10  6  8 16 25
5 17 15 21 12 14
> user1
  V1 V2 V3 V4 V5
1 10  0 21 18 19
2  6 20 13  8 12
3 17  1 16 14  5
4  0 15 22  4 11
5 25 23  7  2  9
~~~
~~~R
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
~~~
user1의 데이터프레임
가로, 세로, 대각선을 각각 하나의 변수에 sum을 구하였을 때 0이 되는 경우를 입력합니다.
~~~R
if(sum(c(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1))==1){
  print("한줄빙고")
} else if(sum(c(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1))==2){
  print("두줄빙고")
} else if(sum(c(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1))==3){
  print("세줄빙고")
} else if (sum(c(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1))==0){
  print("빙고없음")
}
~~~
T/F를 비교하여 if문에 해당하는 값이 되었을 경우 각각 "한줄빙고", "두줄빙고", "세줄빙고"를 출력합니다.
~~~R
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
~~~
user2의 데이터프레임
가로, 세로, 대각선을 각각 하나의 변수에 sum을 구하였을 때 0이 되는 경우를 입력합니다.
~~~R
if(user1_bingo=="세줄빙고"){
  print("user1의 승으로 빙고게임이 끝났습니다.")
} else if(user2_bingo=="세줄빙고"){
  print("user2의 승으로 빙고게임이 끝났습니다.")
}
~~~
"세줄빙고"를 가장 먼저 완성한 사용자가 게임에서 승리합니다.


