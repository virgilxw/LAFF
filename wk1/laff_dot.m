function [ alpha ] = laff_dot( x, y )
% x and y must each be either an  array (column vector) or a  array (row vector);
% If x and/or y are not vectors or if the size of (row or column) vector x does not match the size of (row or column) vector y, the output should be 'FAILED'.

[rx, cx] = size(x);
[ry, cy] = size(y);

alpha = 0;

if ~((rx == 1 || cx == 1) && (ry == 1 || cy == 1))
    alpha = "FAILED";
    return
end

if (rx * cx) ~= (ry * cy)
    alpha = "FAILED";
    return
end

if (rx==1 && ry == 1)
    for i=1:cx
        alpha = alpha + (x(1,i) * y(1,i));
    end
elseif (rx==1 && cy == 1)
    for i=1:cx
        alpha = alpha + (x(1,i) * y(i,1));
    end
elseif (cx==1 && ry == 1)
    for i=1:rx
        alpha = alpha + (x(i,1) * y(1,i));
    end
elseif (cx==1 && cy == 1)
    for i=1:rx
        alpha = alpha + (x(i,1) * y(i,1));
    end
end

alpha;


