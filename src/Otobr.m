function res = Otobr(D,omega,gran,plotAxis)
if(nargin==3)
    plotAxis = [-5 5 -5 5];
end
subplot(1,2,1),hold on, grid on, axis(plotAxis)
plot(real(D),imag(D),'.k')
for k=1:length(gran')
plot(real(gran),imag(gran),'r*')
end

subplot(1,2,2),hold on, grid on, axis(plotAxis)
plot(real(omega(D)),imag(omega(D)),'.k')
for k=1:length(gran')
plot(real(omega(gran)),imag(omega(gran)),'r*')
end
end