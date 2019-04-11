function [X0,T,n,d]=readData(dataset)
    X0=dataset(:,1:end-1);
    [n,d]=size(X0);
    T=dataset(:,end);
end