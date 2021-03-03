function [D gran] = OblastLin(xmin,xmax,ymin,ymax,N,h)
if (nargin==4)
    N=10000;
    h=10;
end
D = Dlin(xmin,xmax,ymin,ymax,N);
gran = granLin(xmin,xmax,ymin,ymax,h);
end