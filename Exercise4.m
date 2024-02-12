%Exercise 4
%computing the matrix with random numbern
y= randi(100, 1300, 1);
A = [];
for i = 1:1300
    A = [A, y];
    y = circshift(y, 1);
end

%measuring the tme of doing inv, SVD and backslash operater 
%time elapsed = 4.24 sec
tic
inverse = inv(A)
SVD = svd(A)
x=A\y
toc

