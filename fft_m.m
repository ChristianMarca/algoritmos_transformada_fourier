function [X] = fft_m(x)
N=length(x);
for k=0:N-1
    sum=0;
    for n=0:N-1
        sum=x(n+1)*exp(-i*2*pi*k*n/N)+sum;
    end
    X(k+1)=sum;
end
end