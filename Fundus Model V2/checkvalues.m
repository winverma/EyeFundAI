function er=checkvalues( x, z)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

idx = find(x==Inf);
if(length(idx) > 0)
    z(idx)
    error('Inf');
end
idx=find(isnan(x));
if(length(idx) > 0)
    z(idx)
    error('NaN');
end