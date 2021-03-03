omega = @(z) (z - 1i)./(z + 1i);
[D gran] = OblastLin(0,10,0,10);
Otobr(D,omega,gran);