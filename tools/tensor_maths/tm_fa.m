function fa = tm_fa(a,b)
% function fa = tm_fa(a,b)
%
% With one input argumnet: calculate the FA of the second order tensor 'a'
% With two arguments: assume 'a' to be MD and 'b' to be the variance in
%           eigenvectors, and calculate FA from that


if (nargin == 1)
    
    d_1x6 = a;
    md = tm_md(d_1x6);
    vl = tm_v_lambda(d_1x6);
    
elseif (nargin == 2)
    
    md = a;
    vl = b;
    
end


fa = sqrt( (3/2) * (1 + md.^2./vl).^(-1) );