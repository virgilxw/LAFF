function [y_out] = laff_axpy(alpha, x, y)
% x and y must each be either an  array (column vector) or a  array (row vector);
% y_out must be the same kind of vector as y; and
% If x and/or y are not vectors or if the size of (row or column) vector x does not match the size of (row or column) vector y, the output should be 'FAILED'. 
% If alpha is not a scalar, the output should be 'FAILED'.

[nx, mx] = size(x);

[ny, my] = size(y);

y_out = zeros( size(y) );

if ~(isvector( x ) && isvector( y ))
    y_out = 'FAILED';
    return
end

if ~((nx == 1 || mx == 1) && (ny == 1 || my == 1))
    y_out = "FAILED";
    return
end

if (nx * mx) ~= (ny * my)
    y_out = "FAILED";
    return
end

if ~isscalar( alpha )
    y_out = 'FAILED';
    return
end

if ((nx == 1 && ny == 1) || (mx == 1 && my == 1))
    y_out = laff_scal(alpha, x) + y;
    return
elseif (nx == 1 && my == 1)
    for i=1:mx
        y_out(i,1) = x(1,i) * alpha + y(i, 1)
    end
elseif (mx == 1 && ny == 1)
    for i=1:nx
        y_out(1,i) = x(i,1) * alpha + y(1,i)
    end
else
    y_out = "FAILED";
    return
end
