function [Re_x,Im_x] = trans_fourier_m(x)
%TRANS_FOURIER_M Summary of this function goes here
%   Detailed explanation goes here
x=x';
N=length(x);
k_l=length(x)/2+1;

k=(0:k_l-1);
i=(0:length(x)-1)';

C=k.*i;

A=[cos(2*pi*C/N) sin(2*pi*C(:,2:end-1)/N)];

X=(A^-1*x)';

Re_x=[X(1)*(N) X(2:k_l-1)*(N/2) X(k_l)*(N)];
Im_x=[0 X(k_l+1:end)*(N/2) 0];

end

