omega = @(z) cosh(z);
[D gran] = OblastLin(0,2,-pi,pi);
Otobr(D,omega,gran);