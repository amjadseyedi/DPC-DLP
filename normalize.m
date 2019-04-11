function X=normalize(X0)
    [n,d]=size(X0);
    X=zeros(n,d);
    for i=1:d
        mi=min(X0(:,i));
        ma=max(X0(:,i));
       for j=1:n
           X(j,i) = (X0(j,i) - mi) / ( ma - mi);
       end
    end
end