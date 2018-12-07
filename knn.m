%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computa��o
%Intelig�ncia Computacional - Dr. Jarbas Joaci
%Fun��o que executa o KNN

%fun��o recebe (amostras, classes, numeros de vizinhos) e retorna a taxa de acertos
function taxa = knn(amostras, classes, k)
[s,tam] = size(amostras);%tam recebe o numero de amostras e s o numero de atributos
a = ceil(tam*10/100);%a � o numero que separa a amostra em 5% e 95%
acertos = 0;
for i=1:a %para os 30% das asmostras (Testes)
    for j=a+1:tam %para os 70% das asmostras (Treinamento)
        d=0; %reseta d para a distancia de um novo vetor
        for p=1:s %para todos os atributos das amostras
            %d � a soma dos quadrados das diferencas das coordenadas da amostra i para a amostra j
            d = d + (amostras(p,i) - amostras(p,j))^2; 
        end
        %dist(j) � a raiz quadrada da soma dos quadrados das coordenadas (distancia euclidiana)
        dist(j) = sqrt(d);
    end
    classesaux = classes; %variavel auxiliar para retirar a classe da amostra retirada
    for m=1:k %para os k-vizinhos mais perto da amostra i
        [~,indice] = min(dist); %pegamos o indice do vizinho mais proximo
        knn(m) = classesaux(indice); %colocamos a classe desta amostra em knn (apenas uma coordenada no caso)
        dist(indice) = []; %removemos esta amostra
        classesaux(indice) = []; %removemos a classe da amostra retirada (questao de dimensionamento)
    end
    %agora com as classes das amostras mais proximas em knn, verificamos qual classe ocorre em maior numero
    if(mode(knn) == classes(i)) %se a classe que ocorreu mais for a classe da amostra i
        acertos = acertos + 1; %acrescentamos acertos
    end
end
taxa = acertos*100/a; %retorna a taxa de acertos