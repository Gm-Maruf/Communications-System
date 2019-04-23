clc;
clear;

X=[1 0 0 0 0 1 1 1];
T = length(X);

BD=100;
N=2*BD*T;
dt=T/N;

t=0:dt:T;

Y = zeros(1,length(t));

inversion = 1;

for i=0:1:(T-1);
    if X(i+1)==0
        inversion = inversion*(-1);
        Y(i*2*BD+1 : (2*i+1)*BD)=inversion;
        inversion = inversion*(-1);
        Y((i*2+1)*BD+1 : (2*i+2)*BD)=inversion;
    else
        Y(i*2*BD+1 : (2*i+1)*BD)=inversion;
        inversion = inversion*(-1);
        Y((2*i+1)*BD+1 : (2*i+2)*BD)=inversion;
    end;
end;

plot(t,Y);
axis([0 t(end) -2 2]);
grid on;
title('Differential Manchester (Encoding)');