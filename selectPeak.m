function peak=selectPeak(rho,delta,frac)
    score=(rho).*(delta);
    [~,B]=sort(score,'descend');
    peak=B(1:frac);
end