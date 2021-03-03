function D = Drad(Rmin,Rmax,argmin,argmax,N)
if (nargin==4)
    N=10000;
end
r = (Rmax-Rmin).*rand(1,N)+Rmin;
phi = (argmax-argmin).*rand(1,N)+argmin;
D = r.*exp(1i.*phi);

end