function W=calculateP(X,dis,mu,sigma)
n=size(dis,1);
W=dis.^2;
W=W./(mu*(sigma.^2));
W=exp(-W);
W=W-eye(n);
% P=W./sum(W,2);   

end