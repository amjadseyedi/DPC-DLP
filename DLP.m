function [label,i,Yt]=DLP(X,Y0,labeled,P,PP,alfa,lambda,t)
n=size(X,1);
Yt=Y0;
for i=1:t
    Yt1=P*Yt;
    Yt1(labeled~=0,:)=Y0(labeled~=0,:);
    cor=alfa*(Yt*Yt');
    P=(PP*(P+cor)*PP')+(lambda*eye(n));
    Yt=Yt1;
end
[~,label]=max(Yt,[],2);
end