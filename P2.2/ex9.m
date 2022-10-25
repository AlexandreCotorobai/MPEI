N = 1e5;
dp = 2;
m = 14;


x = dp * randn(1,1e5) + m;
histogram(x,100);


cf = sum(x>12 & x<16);
p = cf/N