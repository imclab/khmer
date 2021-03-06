function [distribution] = get_dist_into_bins(D,bins)
    T(1)=length(D);
    T(2)=length(bins);
    D=D(1:min(T));
    bins=bins(1:min(T));
    distribution=zeros(max(bins),2);
    for l=1:max(bins)
        lots=find(bins(:)==l);
        distribution(l,1)=mean(D(lots));
        distribution(l,2)=mean(lots);
        distribution(l,3)=std(D(lots))/sqrt(length(lots));
    end
end

