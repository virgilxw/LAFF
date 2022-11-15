function [x_out] = laff_scal(alpha, x)
% x must be either an  array (column vector) or a  array (row vector);
% x_out must be the same kind of vector as x; and
% If x or alpha are not a (row or column) vector and scalar, respectively, the output should be 'FAILED'.

[nx, mx] = size(x);

if ~isscalar( alpha )
    x_out = 'FAILED';
    return
end
if ~isvector( x )
    x_out = 'FAILED';
    return
end

if (nx == 1)
    for i=1:mx
        x(1,i) = x(1,i) * alpha;
    end

elseif (mx == 1)
    for i=1:nx
        x(i,1) = x(i,1) * alpha;
    end
else
    x_out = 'FAILED';
    return
end
  
x_out = x;