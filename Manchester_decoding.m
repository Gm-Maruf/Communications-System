x = [1 0 0 0 0 1 1 1];
T = length(x);

n = 100;
N = 2*n;
dt = 1/N;
t = 0:dt:T;
L = length(t);
y = zeros(1,L);
 
for i=0:1:(T-1);
     if x(i+1)==1
          y(i*2*n+1 : (2*i+1)*n)=-1;
          y((i*2+1)*n+1 : (2*i+2)*n)=1;
     else
          y(i*2*n+1 : (2*i+1)*n)=1;
          y((2*i+1)*n+1 : (2*i+2)*n)=-1;
     end;
end;

increment=(1/dt);
bitLength=length(Y);

j=1;
check=1;
for i=1:increment:bitLength-increment;
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
