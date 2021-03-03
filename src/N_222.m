omega = @(z) cosh(z);
[D gran] = OblastLin(-pi,pi,-5,0);
Otobr(D,omega,gran);

z = [-2:0.1:0] + 1i;
plot(real(omega(z)),imag(omega(z)),'*g')

z = [0:0.1:2].*1i + 1;
plot(real(omega(z)),imag(omega(z)),'*b')