function X = fft_practica(x)
N = length(x);
x_par = x(1:2:end);
x_impar = x(2:2:end);
if length(x_par)~=1
    X_impar = fft_practica(x_impar);
    X_par = fft_practica(x_par);
    X = [(X_par+exp(-1i*2*pi*((0:N/2-1)')/N).* X_impar);...
        (X_par-exp(-1i*2*pi*((0:N/2-1)')/N).* X_impar)];
else
    X = [(x_par+exp(-1i*2*pi*((0:N/2-1)')/N).*x_impar);...
        (x_par-exp(-1i*2*pi*((0:N/2-1)')/N).* x_impar)];
end
end