### Simple-Bingo-Game
#### [기초프로그래밍 R] R을 활용한 간단한 빙고 게임

##### 게임방법

##### 1. Game 코드를 실행 후 사용자들에게 묻는 "Do you want to start the game?"이라는 문구를 확인한 뒤 이에 대한 응답으로 "OK"를 사용자의 키보드로 작성하게 되면 게임을 시작할 수 있다. (R스트립트 불러오기 source())

##### 2. 가위바위보 게임을 실행한다. user1,2(이후 빙고 게임의 순서가 정해진 경우)를 결정하는 과정이다. Student 1과 Student 2 (게임 참여자 순서 상관없이 입력)에게 각각 입력값을 받는다.

##### 3. 입력값을 받은 후 if 문을 실행하면 게임 결과를 확인할 수 있다. 여기서 만약 무승부가 되었을 경우 user 1과 user 2가 결정되지 않으며, Student 1과 Student 2 입력을 다시 실행한다.

##### 4. user 1과 user2 실행을 통해서 순서를 확인한다.

##### 5. 각 사용자들의 5 x 5 빙고판 생성된다.

##### 6. user 1과 user2 순서로 각각 사용자가 자신에게 유리한 값을 생각하여 입력값을 받는다. (빙고판 확인 가능)

##### 7. 입력값을 받은 뒤에 빙고(한 줄 완성)가 되었을 경우 해당 사용자는 실행을 통해 "한줄빙고", "두줄빙고", "세줄빙고"를 외친다.

##### 8. "세줄빙고"가 외쳐졌을 때 게임이 종료된다.
