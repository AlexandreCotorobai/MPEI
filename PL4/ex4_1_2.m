N=1e5;
imin= 6;
imax=20;
alfabeto = ['a':'z' 'A':'Z'];

words = generate_uniform(N,imin,imax,alfabeto);

%% criar a tabela

for T=[5e5 1e6 2e6]
%tabela=zeros(1,T);

atribuicoes=zeros(1,T);

%% processar as palavras 1 a 1

hashcodes=zeros(1,N);

for i = 1:N
    %aplicar hashfunction
    hash=string2hash(words{i});
    hash=rem(hash,T)+1;
    %disp(hash);
    hashcodes(i)=hash;
    atribuicoes(hash)=atribuicoes(hash)+1;
end

%% hist
figure(1)
hist(hashcodes,100);

%% hist atrib
figure(2)
hist(atribuicoes,0:5);

%% num colisoes

ncol=sum(atribuicoes>1);
perc=ncol/T*100;
fprintf(1,"T=%d, ncol = %d, percent = %.3f\n",T,ncol,perc);
end