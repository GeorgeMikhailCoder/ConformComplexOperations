function [D gran] = OblastRad(Rmin,Rmax,argmin,argmax,N,h)
if (nargin==4)
    N=10000;
    h=10;
end
D = Drad(Rmin,Rmax,argmin,argmax,N);
gran = granRad(Rmin,Rmax,argmin,argmax,h);
end