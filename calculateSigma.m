function sigma=calculateSigma(X,cc)
    n=size(X,1);    
    [~,knnd]=knnsearch(X,X,'k',6);
    A=sum(knnd,2);
    A=repmat(A,[1 n]);
    A=A+A';
    sigma=cc*(A/10);
end