## This code is used to test the cachematrix.R code

remove(list=ls());
graphics.off();
source("cachematrix.R");

a = matrix(c(1,2,2,1), nrow=2, ncol=2);

message("Original matrix:")
print(a);

b = makeCacheMatrix(a);

message("");
message("The matrix from the get function should match the original:");
print(b$get());
message("");
message("If successful, both the \"computing inverse matrix\" and the \"getting cached data\" messages should be displayed in the console");
message("");
print(cacheSolve(b));
message("");
print(cacheSolve(b));

message("")
message("The inverse multiplied by the original matrix should give a identity matrix:");

c = cacheSolve(b);
message("");
print(a %*% c);


