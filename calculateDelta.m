function delta=calculateDelta(rho,di)
    
    del=rho*(1./rho');
    del(del<=1)=inf;
    del(del~=inf)=1;
    del=del.*di;
    delta=min(del)';
    delta(delta==inf)=max(di(delta==inf,:),[],2);   
end