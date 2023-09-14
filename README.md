# numeric_method
1. 계산
- 계산 과정에서 ; 쓰면 **결과창에 표시 안된다.**
- 이거 말고는 뭐 중요한거 없음..
- 복소수를 입력할때는 **i or j** 사용
- 
2. 포멧
- 사용방법 :
```matlab
  format short; pi
  format long; pi
  format shot eng; pi
```
  
- short : 5자리
- long : 15자리
- short eng : e+000 형태로 나타남
3. 배열과 행렬
- 배열 : 한줄로 생긴 행렬 : 1:x 행렬
```matlab
a=[1 2 3 4 5]
b=[1 2 3 4 5]' % 전치
c = [2; 4; 6; 8; 10;] % 한열로 생성됨
```
- 행렬 : nxm행렬 선언
```matlab
A=[1 2 3; 4 5 6; 7 8 9;]
```
4. 명령어
- who whos
5. 행렬의 접근
  ```matlab
C=[2 4 9; 3 3 16; 3 0 8; 10 13 17]
C(2) % 3 2,1과 동일 
C(4) % 10
C(13) % error
C(2,1) $ 3
C(3,2) % 0
```
5. 콘론 연산자
- 반드시 애는 linspace 또는 logspace와 바꿔 사용할 줄 알아야 함
  ```matlab
  1:0.6:3 % 1부터 최대 3 까지 0.6간격으로
  linspace(1,2,3) %1 2 포함해서 3개로 쪼갬
```
6. 함수(p.30,40~42 참고)
  
