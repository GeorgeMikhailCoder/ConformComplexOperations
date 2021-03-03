omega = @(z) log(z);
[D gran] = OblastRad(0,2,-pi,pi);
Otobr(D,omega,gran);

z = -2:0.1:0;
plot(real(omega(z)),imag(omega(z)),'*g')

z = 0:0.1:2;
plot(real(omega(z)),imag(omega(z)),'*b')