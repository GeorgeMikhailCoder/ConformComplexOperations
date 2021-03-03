function D = Dlin(xmin,xmax,ymin,ymax,N)
if (nargin==4)
    N=10000;
end

x = (xmax-xmin).*(rand(1,N))+xmin;
y = (ymax-ymin).*(rand(1,N))+ymin;
D = x + 1i.*y;
end
