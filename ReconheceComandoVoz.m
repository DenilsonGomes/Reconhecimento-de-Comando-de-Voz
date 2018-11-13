% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
% Processamento Digital de Sinais
% Script para reconhecer comandos de Voz

clear
clc
close all

%Carrega os audios dos comandos
[n1,~] = audioread('nao (1).wav');
[n2,~] = audioread('nao (2).wav');
[n3,~] = audioread('nao (3).wav');
[n4,~] = audioread('nao (4).wav');
[n5,~] = audioread('nao (5).wav');
[s1,~] = audioread('sim (1).wav');
[s2,~] = audioread('sim (2).wav');
[s3,~] = audioread('sim (3).wav');
[s4,~] = audioread('sim (4).wav');
[s5,Fs] = audioread('sim (5).wav');

%pega a primeira coluna do audio
n1 = n1(:,1);
n2 = n2(:,1);
n3 = n3(:,1);
n4 = n4(:,1);
n5 = n5(:,1);

s1 = s1(:,1);
s2 = s2(:,1);
s3 = s3(:,1);
s4 = s4(:,1);
s5 = s5(:,1);

%normaliza os audios
n1 = normaliza(n1);