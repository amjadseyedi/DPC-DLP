function [peaks,nPeak,k,neighbs,rho]=densityPeaks(X0,dis,n,p,tetha)
    k=fix(p*n);
    k2=max(k,10);
    [disFromNeighb,neighbs]=neighborhood(X0,k2);
    rho=calculateRho(disFromNeighb(:,1:k),k);
    delta=calculateDelta(rho,dis);
    peaks=selectPeak(rho,delta,tetha);
    nPeak=size(peaks,1);
end