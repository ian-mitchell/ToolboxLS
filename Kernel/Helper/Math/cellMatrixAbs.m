function absA = cellMatrixAbs(A)
% cellMatrixAbs: elementwise absolute value of a cell matrix.
%
%   absA = cellMatrixAbs(A)
%
% Let A(x) be an m by n matrix whose value depends on the state x.  In the
% level set toolbox, we have chosen to represent this matrix as an m by n
% cell matrix; entry A{i,j} is an array (the size of the grid) providing
% the (i,j) entry of A for each node in the grid.
%
% For example, grid.xs is a grid.dim by 1 cell matrix that provides the
% state x at each node in the grid.
%
% This function returns a cell matrix containing the absolute values of
% the input cell matrix.
%
% Input parameters:
%
%   A: Cell matrix or regular matrix of size m by n.
%
% Output parameters:
%
%   absA: Same as A, but entries are the absolute values of entries of A.

% Copyright 2020 Ian M. Mitchell (mitchell@cs.ubc.ca).
% This software is used, copied and distributed under the licensing 
%   agreement contained in the file LICENSE in the top directory of 
%   the distribution.
%
% Ian Mitchell, 2020-03-08

  if(iscell(A))
    sizeA = size(A);
      
    if(length(sizeA) ~= 2)
      error('A must be a cell array of dimension 2.');
    end
  
    absA = cell(sizeA);
    for i = 1 : sizeA(1)
      for j = 1 : sizeA(2)
        absA{i,j} = abs(A{i,j});
      end
    end
    
  elseif(isnumeric(A))
      absA = abs(A);
      
  else
    error('Input A must be a numeric array or a cell matrix');
  end

end