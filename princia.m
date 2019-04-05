clear all
clc
for j=1:3
for i=1:12
    a=rand(2^i,1)';
    tic
    try
    [x2_real,x2_imag]=trans_fourier_m(a);
    catch
        
    end
    t(j,i)=toc;
    tic
    x=dft_m(a);
    t1(j,i)=toc;
    tic
    x1=fft_pra(a);
    t2(j,i)=toc;
    tic
    x3=fft(a);
    t3(j,i)=toc;
end
end
h=semilogy(sum(t)/3)
set(h,'LineStyle','-.')
hold on
h=semilogy(sum(t1)/3)
set(h,'LineStyle','..')
h=semilogy(sum(t2)/3)
set(h,'LineStyle','--')
h=semilogy(sum(t3)/3)
legend('RFT','DFT','FFT','A. MATLAB')
grid minor