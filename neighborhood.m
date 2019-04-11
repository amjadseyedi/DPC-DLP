function [disFromNeighb,neighbs]=neighborhood(X,k)
    [neighbs,disFromNeighb]=knnsearch(X,X,'k',k+1);
    neighbs(:,1)=[];
    disFromNeighb(:,1)=[];
end