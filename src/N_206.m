omega = @(z) 1/2.*(z+1./z);
a = omega(1/2)
b = omega(1)
Otobr2(omega,0,1,0,2*pi);

x = a:-0.01:b;
plot(real(x),imag(x),'-g*');