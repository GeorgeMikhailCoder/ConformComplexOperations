omega = @(z) (exp(i* (pi/4)) * z).^( 4/3 );
[D gran] = OblastRad(0, 5,-pi/4,pi/2);
Otobr(D,omega,gran);