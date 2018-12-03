%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Inteligência Computacional - Dr. Jarbas Joaci
%Função que normaliza os dados

%função recebe os dados e os retorna com media zero e variança unitaria
function X = normaliza(dados) 
[l,c] = size(dados); %recebe as dimensoes dos dados
X =dados;
for j=1:c
    media = mean(dados(:,j));
    varianca = var(dados(:,j));
    for i=1:l %para todos os valores de cada vetor
        X(i,1) = (dados(i,j) - media)/varianca; %normaliza o dado
        %todos os atributos do vetor i foram normalizados
    end %todos os dados foram normalizados
end