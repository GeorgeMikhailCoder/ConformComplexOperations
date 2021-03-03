clear i

Rmin=0;
Rmax=2;
argmin = 0;
argmax = pi/4;

N=10000;
r = (Rmax-Rmin).*rand(1,N)+Rmin;
phi = (argmax-argmin).*rand(1,N)+argmin;
D = r.*exp(1i.*phi);

h=10;
gran = [(Rmin:(Rmax-Rmin)/h:Rmax).*exp(1i*argmin);
        (Rmin:(Rmax-Rmin)/h:Rmax).*exp(1i*argmax);
        Rmin.*exp(1i.*(argmin:(argmax-argmin)/h:argmax));
        Rmax.*exp(1i.*(argmin:(argmax-argmin)/h:argmax));
        ];

% omegaLin = @(z) (z./(z-1)).* ...
% (( sqrt(2)/2 + 1i*sqrt(2)/2 - 1)/...
% (sqrt(2)/2 + 1i*sqrt(2)/2));

omegaSize = @(z) (1/2.*z);
omegaSt = @(z) z.^8;
omegaZuk = @(z) 1/2.*(z+1./z);
omegaZ = @(z) exp(i*pi/2).*(z.^(1/2));

omega = @(z) omegaZ(omegaZuk(omegaSt(omegaSize(z))));
Otobr(D,omega,gran,[-3 3 -3 3]);
