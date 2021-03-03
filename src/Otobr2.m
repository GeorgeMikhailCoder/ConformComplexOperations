function res = Otobr2(omega, Rmin, Rmax, argmin, argmax, N, h);
if(nargin==5)
    N=10000;
    h=10;
end

clear i

D = Drad(Rmin, Rmax, argmin, argmax, N);
gran = granRad(Rmin, Rmax, argmin, argmax, h);

Otobr(D,omega,gran,[-3 3 -3 3]);
end