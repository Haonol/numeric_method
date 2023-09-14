%p.10~14 : 명령어 창에 넣기

%예제 문제
%예제문제 높이가 h 이고 반지름이 r인 원통 실린더의 부피는 V=pi*r^2*h로 계산할때 틀정 실린더 탱크의 높이가 15m이고
%반지름은 8m이다 부피가 20퍼센트 더 크고 같은 높이를 가지는 실린더 탱르르 반들때 실린더의 반지름은 얼마가 되어야 하는가ㅡ
r_1 = 8 ;
h_1 = 15;
v_1 = pi*r_1^2*h_1;
r=sqrt(v_1*1.2/(pi*h_1))

%% 2번문제
A=[1:3; 2:2:6; 3:-1:1]
A= A'
A(:,3) = []
A= sim(diag(a))

%% 3번 문제
%★반드시 원소곱 해주는 방식 곱해주는 거 잘 해보기
y= (6*t.^3-3*t-4)./(8*sin(5*t))
y= (6*t-4)./(8*t)-pi/2*t

%% line colon 간 변환
%이것도 잘 보기
t = 4 : 6 :35
t_1 = linspace(4,34,6)

x= -4:2
x_1 = linspace(-4,2,7)

%% 그래프 그리기 
% subplot 이거 사용법 + 제목 넣는법 확인해보기
t= 0:pi/50:10*pi;
subplot(1,2,1); plot(sin(t),cos(t))
axis square
title ("a")
subplot(1,2,2); plot3(sin(t),cos(t),t)
title("b")
xlabel("sin")
ylabel("cos")
zlabel("t")

%% 사례연구
m = [83.6 60.2 72.1 91.1 92.9 65.3 80.9];
vt = [53.4 48.5 50.9 55.7 54 47.7 51.1];
g=9.81
cd = g*m./vt.^2
% 평균적인 항력계수를 구함
cd_avg = mean(cd), cdmin=min(cd), cdmax = max(cd)

% 예상되는 종단 속도를 구함
vpred = sqrt(g*m/cd_avg)

%실제와 비교해보자 p.48 해석 확인하기
subplot(2,1,1);
plot(vt,vpred, 'o',vt,vt)
ylim([45 60])
xlabel("measured")
ylabel("predict")
title("pridict")

subplot(2,1,2);
plot(m,cd, 'o')
xlabel("mass")
ylim([0.2 0.35])
ylabel("cd ")
title("")