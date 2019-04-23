clc;
clear;

X=[1 0 0 0 0 1 1 1];
T = length(X);

n = 100;
N=2*BD;
dt=T/N;

t=0:dt:T;

Y = zeros(1,length(t));

Inv = 1;

for i=0:1:(T-1);
    if X(i+1)==0
        Inv = Inv*(-1);
        Y(i*2*BD+1 : (2*i+1)*BD)=Inv;
        Inv = Inv*(-1);
        Y((i*2+1)*BD+1 : (2*i+2)*BD)=Inv;
    else
        Y(i*2*BD+1 : (2*i+1)*BD)=Inv;
        Inv = Inv*(-1);
        Y((2*i+1)*BD+1 : (2*i+2)*BD)=Inv;
    end;
end;

Inc=(1/dt);
bitLength=length(Y);

j=1;
check=1;
for i=1:Inc:bitLength-Inc;
    if(i==1)
        if(Y(i)==check)
            bits(j)=1;
        else
            bits(j)=0;
        end;
    else
        if(Y(i)== Y(i-2))
            bits(j)=1;
        else
            bits(j)=0;
        end;
    end;
    j=j+1;
end;
bits