% Sort a vector in ascending and descending order

% Create an exemplary vector
vector = [3 2 4 1 5 9 7 6];

% Sort the vector in ascending order
vector_asc = sort(vector);

% Sort the vector in descending order
vector_desc = sort(vector, 'descend');

% Print the results on the screen
disp('Vector sorted in ascending order:');
disp(vector_asc);
disp('Vector sorted in descending order:');
disp(vector_desc);