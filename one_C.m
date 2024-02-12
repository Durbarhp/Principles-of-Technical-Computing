%define matrices
A = [1, 1, 1; 2, -1, 3];
b = [6; 10];
%using backslash operator
X = A \ b;
disp('Solution using backslash operator:');
disp(X);

%using lsqminnorm
x_lsqminnorm = lsqminnorm(A, b);
disp('Solution using lsqminnorm:');
disp(x_lsqminnorm);

%Both backslash and lsqminnorm has given valid solution
%lsqminnorm has given the smallest possible euclidean norm
%the backslash operator generally minimizes the euclidean norm which
%chooses the smallest magnitude
%lsqminnorm computes the minimum norm solution
% As undetermined cases has no unique solution any of the solution can be
% taken based on the context