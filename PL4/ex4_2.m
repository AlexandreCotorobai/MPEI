clear;
clc;

words=readlines("wordlist-preao-20201103.txt");

%% Alinea 1
n = 8000;
k=3;

keys = words(1:11000);

B = inicializar(n);

for i = 1:1000
    B = adicionarElemento(B, keys{i}, n, k);
end

%% Alinea 2
% nao existem falsos negativos no filtro de bloom


%% Alinea 3
falsos = 0;
for i = 1001:11000
    if membro(B,keys{i}, n, k) == 1
        falsos = falsos + 1;
    end
end
fprintf("Prob: %.2f \n", falsos/10000 * 100)

%% Alinea 4

pFP = (1 - exp(-1000*k/n))^k * 100

%% Alinea 5 
% fazer umas coisitas faceis

