function rho=calculateRho(disFromNeighb,k)
    rho=sum(disFromNeighb.^2,2)/k;
    rho=exp(-rho); 
end