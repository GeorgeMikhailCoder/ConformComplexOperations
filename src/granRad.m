function gran = granRad(Rmin,Rmax,argmin,argmax,h)
if(nargin==4)
    h=10;
end
gran = [(Rmin:(Rmax-Rmin)/h:Rmax).*exp(1i*argmin);
        (Rmin:(Rmax-Rmin)/h:Rmax).*exp(1i*argmax);
        Rmin.*exp(1i.*(argmin:(argmax-argmin)/h:argmax));
        Rmax.*exp(1i.*(argmin:(argmax-argmin)/h:argmax));
        ];
end