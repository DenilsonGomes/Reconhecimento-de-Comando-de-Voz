%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computa��o
%Intelig�ncia Computacional - Dr. Jarbas Joaci
%Fun��o que normaliza os dados

%fun��o recebe os dados e os retorna com media zero e varian�a unitaria
function X = normaliza(dados) 
[s,tam] = size(dados); %recebe as dimensoes dos dados
for i=1:tam %para todos os vetores
    for j=1:s %para todos os atributos desse vetor
        X(j,i) = (dados(j,i) - mean(dados(:,i)))/std(dados(:,i)); %normaliza o dado
    end
    %todos os atributos do vetor i foram normalizados
end %todos os dados foram normalizados