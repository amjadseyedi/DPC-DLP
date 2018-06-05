clear;clc
load dataset/CMC
[X0,T,n,d]=readData(CMC);
c=size(unique(T),1);
%________________________________________________________________Parameters
dis=pdist2(X0,X0);
mu=1;
sigma=calculateSigma(X0,0.4);
W=calculateP(X0,dis,mu,sigma);
p=3;
k2=fix(p*n);
t2=8;
alfa=0.01;
lambda=0;
%______________________________________________________________Density Peak
[peaks,nPeak,k1,neighbs,rho]=densityPeaks(X0,dis,n,p,c);
%________________________________________Provide Data For Label Propagation
[Y0,Labeled]=labeling(peaks,nPeak,n,neighbs(:,1:k1));
Y=Y0;
%_____________________________________________________________________Graph
[PP,WW]=calculatePP(W,neighbs(:,1:10));
P=PP;
%_______________________________________________________________________DLP
[Labels,t]=DLP(X0,Y0,Labeled,P,PP,alfa,lambda,t2);
scatter(X0(:,1),X0(:,2),30,Labels,'filled');
