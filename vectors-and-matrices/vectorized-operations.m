% Create two vectors
vec_a = [1 2 3];
vec_b = [4 5 6];

% Add the two vectors
vec_add = vec_a + vec_b;

% Subtract the two vectors
vec_sub = vec_a - vec_b;

% Multiply the two vectors element-wise
vec_mul = vec_a .* vec_b;

% Divide the two vectors element-wise
vec_div = vec_a ./ vec_b;

% Compute the dot product of the two vectors
vec_dot = dot(vec_a,vec_b);

% Compute the cross product of the two vectors
vec_cross = cross(vec_a,vec_b);

% Create a matrix
matrix_a = [1 2; 3 4];

% Transpose the matrix
matrix_trans = matrix_a.';