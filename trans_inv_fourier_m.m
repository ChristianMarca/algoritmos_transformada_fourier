function[x]= trans_inv_fourier_m(Re_x,Im_x)
N=length(Re_x)+length(Im_x)-2;
disp(N)
Re_x=(Re_x/(N/2))';
Re_x(1)=Re_x(1)/2;
Re_x(end)=Re_x(end)/2;

Im_x=(Im_x/(N/2))';
k=(0:N/2);

i=(0:N-1)';
disp(i)
g=k.*i;
disp(g)
C_k=cos(2*pi*k.*i/N);
S_k=sin(2*pi*k.*i/N);
disp(length(C_k))
disp(length(S_k))
x=(C_k*Re_x+S_k*Im_x)';
