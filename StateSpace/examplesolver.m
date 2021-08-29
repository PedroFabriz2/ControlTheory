clc; clear all; close all;

%A funcao ode45 resolve sistemas de equações diferenciais. O primeiro
%argumento é o handle de uma funcao que você quer representar. No nosso
%caso definimos ela na funcao sys. 
%
% tspan é o argumento que define um vetor de 2 posições no qual está o
% tempo inicial e o tempo final da "simulação".
%
% iniCon representa as condições iniciais sendo na ordem:
% p,q,diff(p),diff(q)

tspan = [0 5];
iniCon = [0.1;0;0;0];

[t, y] = ode45(@sys, tspan, iniCon);

%plotando

figure(1)
plot(t,y/100), ylabel("cm"), legend('posicao(m1)','posicao(m2)', 'diff p', 'diff q');
