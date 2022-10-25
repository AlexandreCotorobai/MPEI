clear all;
clc;

% a) espaco amostra = {0,1,2,3,4}
x = 0:4;
N = 1e4;

p = 0.5;
n = 4;
pxArr = [];
pxArrTeorico = [];

for i = 0:4
    lancamentos = rand(n,N) < p;
    sucessos = sum(lancamentos) == i;
    prob = sum(sucessos)/N;
    pxArr = [pxArr prob];
end

figure(1);
stem(x,pxArr);