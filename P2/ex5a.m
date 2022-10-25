n = 2; %nr lancamentos
m = 6; %nr faces
N = 1e5; % nr de experiencias

lancamentos = randi(m,n, N); % cria matriz n x M com valores entre 1:m

%“A – a soma dos dois valores e igual a 9”
%"B – o segundo valor é par”
%"C – pelo menos um dos valores é igual a 5"
%“D – nenhum dos valores e igual a 1”


%% CASO A

cA = sum(lancamentos) == 9;

totalA = sum(cA);
probA = totalA/N  %Valor Teorico: 4/36


%% CASO B

segundoLanc = lancamentos(2,:);
segundoPar = rem(segundoLanc, 2) == 0;
totalB = sum(segundoPar);
probB = totalB/N


%% CASO C
totalC = 0;
for col = 1:N
    igual5 = ismember(5,lancamentos(:,col));
    totalC = totalC + igual5;
end

probC = totalC/N

%% CASO D
totalD = 0;
for col = 1:N
    dif1 = ~ismember(1,lancamentos(:,col));
    totalD = totalD + dif1;
end

probD = totalD/N
