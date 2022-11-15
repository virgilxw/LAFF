function [ alpha ] = laff_norm2( x )
% x is an  array (column vector) or a  array (row vector);
%If x is not a vector the output should be 'FAILED'.

[rx, cx] = size(x);

alpha = 0;

if ~(rx == 1 || cx == 1)
    alpha = "FAILED";
    return
end

if (rx==1)
    for i=1:cx
        alpha = alpha + x(1,i)^2;
    end
elseif (cx==1)
    for i=1:cx
        alpha = alpha + x(i,1)^2;
    end
end

alpha = sqrt(alpha)


