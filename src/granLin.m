function gran = granLin(xmin,xmax,ymin,ymax,h)
if(nargin==4)
    h=10;
end
gran = [(xmin:(xmax-xmin)/h:xmax)+1i.*ymin;
        (xmin:(xmax-xmin)/h:xmax)+1i.*ymax;
        xmin+1i.*(ymin:(ymax-ymin)/h:ymax);
        xmax+1i.*(ymin:(ymax-ymin)/h:ymax);
        ];
end