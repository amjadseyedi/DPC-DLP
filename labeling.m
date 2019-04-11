function [Y0,Labeled]=labeling(peaks,nPeak,n,neighbs)
    Y0=zeros(n,nPeak);
    Labeled=zeros(n,1);
    for i=1:nPeak
        Y0(peaks(i),i)=1;
        Labeled(peaks(i),1)=i;
    end
    for i=1:nPeak
        Y0(neighbs(peaks(i),:),i)=1;
        Labeled(neighbs(peaks(i),:),1)=i;
    end
end