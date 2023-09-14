%p.10~14 : ��ɾ� â�� �ֱ�

%���� ����
%�������� ���̰� h �̰� �������� r�� ���� �Ǹ����� ���Ǵ� V=pi*r^2*h�� ����Ҷ� Ʋ�� �Ǹ��� ��ũ�� ���̰� 15m�̰�
%�������� 8m�̴� ���ǰ� 20�ۼ�Ʈ �� ũ�� ���� ���̸� ������ �Ǹ��� �ʸ��� �ݵ鶧 �Ǹ����� �������� �󸶰� �Ǿ�� �ϴ°���
r_1 = 8 ;
h_1 = 15;
v_1 = pi*r_1^2*h_1;
r=sqrt(v_1*1.2/(pi*h_1))

%% 2������
A=[1:3; 2:2:6; 3:-1:1]
A= A'
A(:,3) = []
A= sim(diag(a))

%% 3�� ����
%�ڹݵ�� ���Ұ� ���ִ� ��� �����ִ� �� �� �غ���
y= (6*t.^3-3*t-4)./(8*sin(5*t))
y= (6*t-4)./(8*t)-pi/2*t

%% line colon �� ��ȯ
%�̰͵� �� ����
t = 4 : 6 :35
t_1 = linspace(4,34,6)

x= -4:2
x_1 = linspace(-4,2,7)

%% �׷��� �׸��� 
% subplot �̰� ���� + ���� �ִ¹� Ȯ���غ���
t= 0:pi/50:10*pi;
subplot(1,2,1); plot(sin(t),cos(t))
axis square
title ("a")
subplot(1,2,2); plot3(sin(t),cos(t),t)
title("b")
xlabel("sin")
ylabel("cos")
zlabel("t")

%% ��ʿ���
m = [83.6 60.2 72.1 91.1 92.9 65.3 80.9];
vt = [53.4 48.5 50.9 55.7 54 47.7 51.1];
g=9.81
cd = g*m./vt.^2
% ������� �׷°���� ����
cd_avg = mean(cd), cdmin=min(cd), cdmax = max(cd)

% ����Ǵ� ���� �ӵ��� ����
vpred = sqrt(g*m/cd_avg)

%������ ���غ��� p.48 �ؼ� Ȯ���ϱ�
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