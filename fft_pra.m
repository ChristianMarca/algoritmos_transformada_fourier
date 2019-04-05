function [X,X_par,X_impar1] = fft_pra(x)
N = length(x);
if N==1
    X=x;
else
    x_par = x(1:2:end);
    x_impar = x(2:2:end);
    X_impar = fft_pra(x_impar);
    X_par = fft_pra(x_par);
    X = [(X_par+exp(-1i*2*pi*((0:N/2-1))/N).* X_impar),...
        (X_par-exp(-1i*2*pi*((0:N/2-1))/N).* X_impar)];
    X_impar1=exp(-1i*2*pi*((0:N/2-1))/N).* X_impar;
end
end