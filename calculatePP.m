function [PP,WW]=calculatePP(W,neighbs)
    n=size(W,1);
    b=0:n:(n*n-1);
    WW=zeros(n);
    neighbs=neighbs+b';
    WW(neighbs)=1;
    WW=WW'.*W;
    PP=WW./sum(WW,2);
end