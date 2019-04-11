clear;clc
load dataset/CMC
[X0,T,n,d]=readData(CMC);
X0=normalize(X0);
c=size(unique(T),1);
%____________________________________________________________________Inputs
dis=pdist2(X0,X0);
mu=2;
sigma=calculateSigma(X0,0.4);
W=calculateP(X0,dis,mu,sigma);
p=0.029;
k2=fix(p*n);
t2=8;
alfa=1;
lambda=0;
%______________________________________________________________Density Peak
[peaks,nPeak,k1,neighbs,rho]=densityPeaks(X0,dis,n,p,c);
%________________________________________Provide Data For Label Propagation
[Y0,Labeled]=labeling(peaks,nPeak,n,neighbs);
Y=Y0;
%_____________________________________________________________________Graph
[PP,WW]=calculatePP(W,neighbs(:,1:10));
P=PP;
%_______________________________________________________________________DLP
[Labels,t]=DLP(X0,Y0,Labeled,P,PP,alfa,lambda,t2);
%______________________________________________________________________Draw
scatter(X0(peaks,1),X0(peaks,2),100,Labels(peaks),'filled');
hold on
scatter(X0(:,1),X0(:,2),10,Labels,'filled');
