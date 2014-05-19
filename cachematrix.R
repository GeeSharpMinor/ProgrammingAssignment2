## Put comments here that give an overall description of what your
## functions do

## Creates a matrix "object" with embedded functions to interact with it

makeCacheMatrix <- function(the_matrix = matrix()) {
  cached_inverse <- NULL;
  set <- function(y){
    the_matrix <<- y;
    cached_inverse <<- NULL;
  }
  get <- function() the_matrix;
  setInverse <- function(input_inverse) cached_inverse <- input_inverse;
  getInverse <- function() cached_inverse;
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse);
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
