% Autor: Denilson Gomes Vaz da Silva
% Departamento de Engenharia de Computação
% Processamento Digital de Sinais
% Script para filtrar os audios rejeitando frequencia maiores que 3500Hz

% dados do filtro:
% f = 3500
% Fs = 48000
% w = 2*pi*f/Fs = 0.4581

function x_filt = filtraSinal(sinal)
    Wp= 7000*pi/48000; % frequência de corte
    Ws= 8000*pi/48000; % frequência onde a atenuação é de 60dB
    rp =3; % máximo ripple
    rs=60; % atenuação na frequência de 8000 Hz
    % calcula a ordem e os coeficientes do filtro
    [n,Wn] = buttord(Wp,Ws,rp,rs); % Calcula a ordem do filtro
    % Implementação do filtro tipo Butterworth:
    [b,a] = butter(n,Wn); % b, a = Coeficientes do filtro.
    % Sinal de voz armazenado na variável = dados
    % Filtragem do sinal de voz
    x_filt = filter(b,a,sinal); % dados_f = contém sinal filtrado
end