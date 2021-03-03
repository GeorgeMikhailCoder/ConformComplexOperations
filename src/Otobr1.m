clear
clc
close all

% omega = @(z) (exp(i* (pi/4)) * z).^( 4/3*pi );
omega = @(z) (z - 1i)./(z + 1i);
% zr = randi(10,1,100) + i*randi(10,1,100);

znak = [1 1;-1 1;-1 -1;1 -1];
zs = [0:0.1:1];
zb = [1:100];
for j=1:4
zsr = znak(j,1).*zs;
zsi = znak(j,2).*zs.*i;
zbr = znak(j,1).*zb;
zbi = znak(j,2).*zb.*i;
zsm = zsr+zsi;
zbm=zbr+zbi;

omsr = omega(zsr);
omsi = omega(zsi);
omsm = omega(zsm);
ombr = omega(zbr);
ombi = omega(zbi);
ombm = omega(zbm);

subplot(1,2,2);
axis([-5 5 -5 5])
hold on, grid on
plot(real(omsr),imag(omsr),'ok')
plot(real(ombr),imag(ombr),'ob')
plot(real(omsi),imag(omsi),'om')
plot(real(ombi),imag(ombi),'or')
plot(real(omsm),imag(omsm),'oy')
plot(real(ombm),imag(ombm),'og')

subplot(1,2,1);
axis([-5 5 -5 5])
hold on, grid on
plot(real(zsr),imag(zsr),'ok')
plot(real(zbr),imag(zbr),'ob')
plot(real(zsi),imag(zsi),'om')
plot(real(zbi),imag(zbi),'or')
plot(real(zsm),imag(zsm),'oy')
plot(real(zbm),imag(zbm),'og')
% pause(2)
end