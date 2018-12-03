% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
% Processamento Digital de Sinais
% Script para reconhecer comandos de Voz

clear
clc
close all

%Carrega os audios dos comandos
[d1,~] = audioread('Direita1.m4a');
[d2,~] = audioread('Direita2.m4a');
[d3,~] = audioread('Direita3.m4a');
[d4,~] = audioread('Direita4.m4a');
[d5,~] = audioread('Direita5.m4a');
[d6,~] = audioread('Direita6.m4a');
[d7,~] = audioread('Direita7.m4a');
[d8,~] = audioread('Direita8.m4a');
[d9,~] = audioread('Direita9.m4a');
[d10,~] = audioread('Direita10.m4a');

[e1,~] = audioread('Esquerda1.m4a');
[e2,~] = audioread('Esquerda2.m4a');
[e3,~] = audioread('Esquerda3.m4a');
[e4,~] = audioread('Esquerda4.m4a');
[e5,~] = audioread('Esquerda5.m4a');
[e6,~] = audioread('Esquerda6.m4a');
[e7,~] = audioread('Esquerda7.m4a');
[e8,~] = audioread('Esquerda8.m4a');
[e9,~] = audioread('Esquerda9.m4a');
[e10,~] = audioread('Esquerda10.m4a');

[f1,~] = audioread('Frente1.m4a');
[f2,~] = audioread('Frente2.m4a');
[f3,~] = audioread('Frente3.m4a');
[f4,~] = audioread('Frente4.m4a');
[f5,~] = audioread('Frente5.m4a');
[f6,~] = audioread('Frente6.m4a');
[f7,~] = audioread('Frente7.m4a');
[f8,~] = audioread('Frente8.m4a');
[f9,~] = audioread('Frente9.m4a');
[f10,~] = audioread('Frente10.m4a');

[t1,~] = audioread('Tras1.m4a');
[t2,~] = audioread('Tras2.m4a');
[t3,~] = audioread('Tras3.m4a');
[t4,~] = audioread('Tras4.m4a');
[t5,~] = audioread('Tras5.m4a');
[t6,~] = audioread('Tras6.m4a');
[t7,~] = audioread('Tras7.m4a');
[t8,~] = audioread('Tras8.m4a');
[t9,~] = audioread('Tras9.m4a');
[t10,Fs] = audioread('Tras10.m4a');

%pega a primeira coluna do audio
d1 = d1(:,1);
d2 = d2(:,1);
d3 = d3(:,1);
d4 = d4(:,1);
d5 = d5(:,1);
d6 = d6(:,1);
d7 = d7(:,1);
d8 = d8(:,1);
d9 = d9(:,1);
d10 = d10(:,1);

e1 = e1(:,1);
e2 = e2(:,1);
e3 = e3(:,1);
e4 = e4(:,1);
e5 = e5(:,1);
e6 = e6(:,1);
e7 = e7(:,1);
e8 = e8(:,1);
e9 = e9(:,1);
e10 = e10(:,1);

f1 = f1(:,1);
f2 = f2(:,1);
f3 = f3(:,1);
f4 = f4(:,1);
f5 = f5(:,1);
f6 = f6(:,1);
f7 = f7(:,1);
f8 = f8(:,1);
f9 = f9(:,1);
f10 = f10(:,1);

t1 = t1(:,1);
t2 = t2(:,1);
t3 = t3(:,1);
t4 = t4(:,1);
t5 = t5(:,1);
t6 = t6(:,1);
t7 = t7(:,1);
t8 = t8(:,1);
t9 = t9(:,1);
t10 = t10(:,1);

%filtra as frequencias f>3500 dos audios
d1 = filtraSinal(d1);
d2 = filtraSinal(d2);
d3 = filtraSinal(d3);
d4 = filtraSinal(d4);
d5 = filtraSinal(d5);
d6 = filtraSinal(d6);
d7 = filtraSinal(d7);
d8 = filtraSinal(d8);
d9 = filtraSinal(d9);
d10 = filtraSinal(d10);

e1 = filtraSinal(e1);
e2 = filtraSinal(e2);
e3 = filtraSinal(e3);
e4 = filtraSinal(e4);
e5 = filtraSinal(e5);
e6 = filtraSinal(e6);
e7 = filtraSinal(e7);
e8 = filtraSinal(e8);
e9 = filtraSinal(e9);
e10 = filtraSinal(e10);

f1 = filtraSinal(f1);
f2 = filtraSinal(f2);
f3 = filtraSinal(f3);
f4 = filtraSinal(f4);
f5 = filtraSinal(f5);
f6 = filtraSinal(f6);
f7 = filtraSinal(f7);
f8 = filtraSinal(f8);
f9 = filtraSinal(f9);
f10 = filtraSinal(f10);

t1 = filtraSinal(t1);
t2 = filtraSinal(t2);
t3 = filtraSinal(t3);
t4 = filtraSinal(t4);
t5 = filtraSinal(t5);
t6 = filtraSinal(t6);
t7 = filtraSinal(t7);
t8 = filtraSinal(t8);
t9 = filtraSinal(t9);
t10 = filtraSinal(t10);

%normaliza os sinais
d1 = (d1-mean(d1))/(max(d1)*var(d1));
d2 = (d2-mean(d2))/(max(d2)*var(d2));
d3 = (d3-mean(d3))/(max(d3)*var(d3));
d4 = (d4-mean(d4))/(max(d4)*var(d4));
d5 = (d5-mean(d5))/(max(d5)*var(d5));
d6 = (d6-mean(d6))/(max(d6)*var(d6));
d7 = (d7-mean(d7))/(max(d7)*var(d7));
d8 = (d8-mean(d8))/(max(d8)*var(d8));
d9 = (d9-mean(d9))/(max(d9)*var(d9));
d10 = (d10-mean(d10))/(max(d10)*var(d10));

e1 = (e1-mean(e1))/(max(e1)*var(e1));
e2 = (e2-mean(e2))/(max(e2)*var(e2));
e3 = (e3-mean(e3))/(max(e3)*var(e3));
e4 = (e4-mean(e4))/(max(e4)*var(e4));
e5 = (e5-mean(e5))/(max(e5)*var(e5));
e6 = (e6-mean(e6))/(max(e6)*var(e6));
e7 = (e7-mean(e7))/(max(e7)*var(e7));
e8 = (e8-mean(e8))/(max(e8)*var(e8));
e9 = (e9-mean(e9))/(max(e9)*var(e9));
e10 = (e10-mean(e10))/(max(e10)*var(e10));

f1 = (f1-mean(f1))/(max(f1)*var(f1));
f2 = (f2-mean(f2))/(max(f2)*var(f2));
f3 = (f3-mean(f3))/(max(f3)*var(f3));
f4 = (f4-mean(f4))/(max(f4)*var(f4));
f5 = (f5-mean(f5))/(max(f5)*var(f5));
f6 = (f6-mean(f6))/(max(f6)*var(f6));
f7 = (f7-mean(f7))/(max(f7)*var(f7));
f8 = (f8-mean(f8))/(max(f8)*var(f8));
f9 = (f9-mean(f9))/(max(f9)*var(f9));
f10 = (f10-mean(f10))/(max(f10)*var(f10));

t1 = (t1-mean(t1))/(max(t1)*var(t1));
t2 = (t2-mean(t2))/(max(t2)*var(t2));
t3 = (t3-mean(t3))/(max(t3)*var(t3));
t4 = (t4-mean(t4))/(max(t4)*var(t4));
t5 = (t5-mean(t5))/(max(t5)*var(t5));
t6 = (t6-mean(t6))/(max(t6)*var(t6));
t7 = (t7-mean(t7))/(max(t7)*var(t7));
t8 = (t8-mean(t8))/(max(t8)*var(t8));
t9 = (t9-mean(t9))/(max(t9)*var(t9));
t10 = (t10-mean(t10))/(max(t10)*var(t10));

%TF
D1 = fftshift(fft(d1));
%Plota o modulo das TF dos audios
freq_vec = linspace(-pi,pi,length(D1));
figure,plot(freq_vec,abs(D1)) %Transformada de Fourier do Direita
title('Transformada de Foutier do Direita1') %Titulo
ylabel('Espectro de magnitude') %legenda
xlabel('Frequencia em Rad/s') %legenda

E1 = fftshift(fft(e1));
%Plota o modulo das TF dos audios
freq_vec = linspace(-pi,pi,length(E1));
figure,plot(freq_vec,abs(E1)) %Transformada de Fourier do Esquerda
title('Transformada de Foutier do Esquerda1') %Titulo
ylabel('Espectro de magnitude') %legenda
xlabel('Frequencia em Rad/s') %legenda

F1 = fftshift(fft(f1));
%Plota o modulo das TF dos audios
freq_vec = linspace(-pi,pi,length(F1));
figure,plot(freq_vec,abs(F1)) %Transformada de Fourier do Frente
title('Transformada de Foutier do Frente1') %Titulo
ylabel('Espectro de magnitude') %legenda
xlabel('Frequencia em Rad/s') %legenda

T1 = fftshift(fft(t1));
%Plota o modulo das TF dos audios
freq_vec = linspace(-pi,pi,length(T1));
figure,plot(freq_vec,abs(T1)) %Transformada de Fourier do Tras1
title('Transformada de Foutier do Tras1') %Titulo
ylabel('Espectro de magnitude') %legenda
xlabel('Frequencia em Rad/s') %legenda

%Coeficientes LPC
%amostras
amostras(:,1) = lpc(d1,31);
amostras(:,2) = lpc(d2,31);
amostras(:,3) = lpc(d3,31);
amostras(:,4) = lpc(d4,31);
amostras(:,5) = lpc(d5,31);
amostras(:,6) = lpc(d6,31);
amostras(:,7) = lpc(d7,31);
amostras(:,8) = lpc(d8,31);
amostras(:,9) = lpc(d9,31);
amostras(:,10) = lpc(d10,31);

amostras(:,11) = lpc(e1,31);
amostras(:,12) = lpc(e2,31);
amostras(:,13) = lpc(e3,31);
amostras(:,14) = lpc(e4,31);
amostras(:,15) = lpc(e5,31);
amostras(:,16) = lpc(e6,31);
amostras(:,17) = lpc(e7,31);
amostras(:,18) = lpc(e8,31);
amostras(:,19) = lpc(e9,31);
amostras(:,20) = lpc(e10,31);

amostras(:,21) = lpc(f1,31);
amostras(:,22) = lpc(f2,31);
amostras(:,23) = lpc(f3,31);
amostras(:,24) = lpc(f4,31);
amostras(:,25) = lpc(f5,31);
amostras(:,26) = lpc(f6,31);
amostras(:,27) = lpc(f7,31);
amostras(:,28) = lpc(f8,31);
amostras(:,29) = lpc(f9,31);
amostras(:,30) = lpc(f10,31);

amostras(:,31) = lpc(t1,31);
amostras(:,32) = lpc(t2,31);
amostras(:,33) = lpc(t3,31);
amostras(:,34) = lpc(t4,31);
amostras(:,35) = lpc(t5,31);
amostras(:,36) = lpc(t6,31);
amostras(:,37) = lpc(t7,31);
amostras(:,38) = lpc(t8,31);
amostras(:,39) = lpc(t9,31);
amostras(:,40) = lpc(t10,31);

%Soma do modulo da TF por intervalo
D2 = fftshift(fft(d2));
D3 = fftshift(fft(d3));
D4 = fftshift(fft(d4));
D5 = fftshift(fft(d5));
D6 = fftshift(fft(d6));
D7 = fftshift(fft(d7));
D8 = fftshift(fft(d8));
D9 = fftshift(fft(d9));
D10 = fftshift(fft(d10));

E2 = fftshift(fft(e2));
E3 = fftshift(fft(e3));
E4 = fftshift(fft(e4));
E5 = fftshift(fft(e5));
E6 = fftshift(fft(e6));
E7 = fftshift(fft(e7));
E8 = fftshift(fft(e8));
E9 = fftshift(fft(e9));
E10 = fftshift(fft(e10));

F2 = fftshift(fft(f2));
F3 = fftshift(fft(f3));
F4 = fftshift(fft(f4));
F5 = fftshift(fft(f5));
F6 = fftshift(fft(f6));
F7 = fftshift(fft(f7));
F8 = fftshift(fft(f8));
F9 = fftshift(fft(f9));
F10 = fftshift(fft(f10));

T2 = fftshift(fft(t2));
T3 = fftshift(fft(t3));
T4 = fftshift(fft(t4));
T5 = fftshift(fft(t5));
T6 = fftshift(fft(t6));
T7 = fftshift(fft(t7));
T8 = fftshift(fft(t8));
T9 = fftshift(fft(t9));
T10 = fftshift(fft(t10));

for n=1:20
    dMediaTF(n,1) = mean(abs(D1(round(length(D1)/2+(n-1)*length(D1)/80):round(length(D1)/2+n*length(D1)/80))));
    dMediaTF(n,2) = mean(abs(D2(round(length(D2)/2+(n-1)*length(D2)/80):round(length(D2)/2+n*length(D2)/80))));
    dMediaTF(n,3) = mean(abs(D3(round(length(D3)/2+(n-1)*length(D3)/80):round(length(D3)/2+n*length(D3)/80))));
    dMediaTF(n,4) = mean(abs(D4(round(length(D4)/2+(n-1)*length(D4)/80):round(length(D4)/2+n*length(D4)/80))));
    dMediaTF(n,5) = mean(abs(D5(round(length(D5)/2+(n-1)*length(D5)/80):round(length(D5)/2+n*length(D5)/80))));
    dMediaTF(n,6) = mean(abs(D6(round(length(D6)/2+(n-1)*length(D6)/80):round(length(D6)/2+n*length(D6)/80))));
    dMediaTF(n,7) = mean(abs(D7(round(length(D7)/2+(n-1)*length(D7)/80):round(length(D7)/2+n*length(D7)/80))));
    dMediaTF(n,8) = mean(abs(D8(round(length(D8)/2+(n-1)*length(D8)/80):round(length(D8)/2+n*length(D8)/80))));
    dMediaTF(n,9) = mean(abs(D9(round(length(D9)/2+(n-1)*length(D9)/80):round(length(D9)/2+n*length(D9)/80))));
    dMediaTF(n,10) = mean(abs(D10(round(length(D10)/2+(n-1)*length(D10)/80):round(length(D10)/2+n*length(D10)/80))));
    
    eMediaTF(n,1) = mean(abs(E1(round(length(E1)/2+(n-1)*length(E1)/80):round(length(E1)/2+n*length(E1)/80))));
    eMediaTF(n,2) = mean(abs(E2(round(length(E2)/2+(n-1)*length(E2)/80):round(length(E2)/2+n*length(E2)/80))));
    eMediaTF(n,3) = mean(abs(E3(round(length(E3)/2+(n-1)*length(E3)/80):round(length(E3)/2+n*length(E3)/80))));
    eMediaTF(n,4) = mean(abs(E4(round(length(E4)/2+(n-1)*length(E4)/80):round(length(E4)/2+n*length(E4)/80))));
    eMediaTF(n,5) = mean(abs(E5(round(length(E5)/2+(n-1)*length(E5)/80):round(length(E5)/2+n*length(E5)/80))));
    eMediaTF(n,6) = mean(abs(E6(round(length(E6)/2+(n-1)*length(E6)/80):round(length(E6)/2+n*length(E6)/80))));
    eMediaTF(n,7) = mean(abs(E7(round(length(E7)/2+(n-1)*length(E7)/80):round(length(E7)/2+n*length(E7)/80))));
    eMediaTF(n,8) = mean(abs(E8(round(length(E8)/2+(n-1)*length(E8)/80):round(length(E8)/2+n*length(E8)/80))));
    eMediaTF(n,9) = mean(abs(E9(round(length(E9)/2+(n-1)*length(E9)/80):round(length(E9)/2+n*length(E9)/80))));
    eMediaTF(n,10) = mean(abs(E10(round(length(E10)/2+(n-1)*length(E10)/80):round(length(E10)/2+n*length(E10)/80))));
    
    fMediaTF(n,1) = mean(abs(F1(round(length(F1)/2+(n-1)*length(F1)/80):round(length(F1)/2+n*length(F1)/80))));
    fMediaTF(n,2) = mean(abs(F2(round(length(F2)/2+(n-1)*length(F2)/80):round(length(F2)/2+n*length(f2)/80))));
    fMediaTF(n,3) = mean(abs(F3(round(length(F3)/2+(n-1)*length(F3)/80):round(length(F3)/2+n*length(F3)/80))));
    fMediaTF(n,4) = mean(abs(F4(round(length(F4)/2+(n-1)*length(F4)/80):round(length(F4)/2+n*length(F4)/80))));
    fMediaTF(n,5) = mean(abs(F5(round(length(F5)/2+(n-1)*length(F5)/80):round(length(F5)/2+n*length(F5)/80))));
    fMediaTF(n,6) = mean(abs(F6(round(length(F6)/2+(n-1)*length(F6)/80):round(length(F6)/2+n*length(F6)/80))));
    fMediaTF(n,7) = mean(abs(F7(round(length(F7)/2+(n-1)*length(F7)/80):round(length(F7)/2+n*length(F7)/80))));
    fMediaTF(n,8) = mean(abs(F8(round(length(F8)/2+(n-1)*length(F8)/80):round(length(F8)/2+n*length(F8)/80))));
    fMediaTF(n,9) = mean(abs(F9(round(length(F9)/2+(n-1)*length(F9)/80):round(length(F9)/2+n*length(F9)/80))));
    fMediaTF(n,10) = mean(abs(F10(round(length(F10)/2+(n-1)*length(F10)/80):round(length(F10)/2+n*length(F10)/80))));
    
    tMediaTF(n,1) = mean(abs(T1(round(length(T1)/2+(n-1)*length(T1)/80):round(length(T1)/2+n*length(T1)/80))));
    tMediaTF(n,2) = mean(abs(T2(round(length(T2)/2+(n-1)*length(T2)/80):round(length(T2)/2+n*length(T2)/80))));
    tMediaTF(n,3) = mean(abs(T3(round(length(T3)/2+(n-1)*length(T3)/80):round(length(T3)/2+n*length(T3)/80))));
    tMediaTF(n,4) = mean(abs(T4(round(length(T4)/2+(n-1)*length(T4)/80):round(length(T4)/2+n*length(T4)/80))));
    tMediaTF(n,5) = mean(abs(T5(round(length(T5)/2+(n-1)*length(T5)/80):round(length(T5)/2+n*length(T5)/80))));
    tMediaTF(n,6) = mean(abs(T6(round(length(T6)/2+(n-1)*length(T6)/80):round(length(T6)/2+n*length(T6)/80))));
    tMediaTF(n,7) = mean(abs(T7(round(length(T7)/2+(n-1)*length(T7)/80):round(length(T7)/2+n*length(T7)/80))));
    tMediaTF(n,8) = mean(abs(T8(round(length(T8)/2+(n-1)*length(T8)/80):round(length(T8)/2+n*length(T8)/80))));
    tMediaTF(n,9) = mean(abs(T9(round(length(T9)/2+(n-1)*length(T9)/80):round(length(T9)/2+n*length(T9)/80))));
    tMediaTF(n,10) = mean(abs(T10(round(length(T10)/2+(n-1)*length(T10)/80):round(length(T10)/2+n*length(T10)/80))));
end

%testes
% clear amostras
for i=1:20
    amostras(32+n,1:10) = mean(dMediaTF(n,:));
    amostras(32+n,11:20) = mean(eMediaTF(n,:));
    amostras(32+n,21:30) = mean(fMediaTF(n,:));
    amostras(32+n,31:40) = mean(tMediaTF(n,:));
end

X = normaliza(amostras); %Normaliza as amostras

%classes
classes = ones(1,40); %classe Direita 1
classes(1,11:20) = 2; %classe Esquerda 2
classes(1,21:30) = 3; %classe frente 3
classes(1,31:40) = 4; %classe Tras 4

%leave-one-out sem normalização
% taxa = leaveoneout(amostras, classes); %calcula a taxa de acerto sem a normalização
% 
% %leave-one-out com os dados normalizados
% taxac = leaveoneout(X, classes); %calcula a taxa de acerto com a normalização
% fprintf('Taxa de acerto do leave-one-out sem a normalização: %.4f\n',taxa);%exibe o percentual de acertos
% fprintf('Taxa de acerto do leave-one-out com a normalização: %.4f\n',taxac);%exibe o percentual de acertos

%knn
[X1,Y] = permuta(amostras,classes);
taxa = knn(X1,Y,5); %taxa de acerto do knn sem normalizar os dados
[X2,Y] = permuta(X,classes);
taxac = knn(X2,Y,5); %taxa de acerto do knn com dados normalizados
fprintf('Taxa de acerto do knn sem a normalização: %.2f\n',taxa);%exibe o percentual de acertos
fprintf('Taxa de acerto do knn com a normalização: %.2f\n',taxac);%exibe o percentual de acertos