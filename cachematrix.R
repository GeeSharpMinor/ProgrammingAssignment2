## makeCacheMatrix creates a matrix
## cacheSolve can be used to calculate the inverse matrix of an output of makeCacheMatrix

## Creates a matrix "object" with embedded functions to interact with it.  It
## also allows for the caching of it's inverse matrix, getting the cached
## inverse matrix, getting the original matrix, and setting the original matrix
makeCacheMatrix <- function(the_matrix = matrix()) {
  cached_inverse <- NULL;
  set <- function(y){
    the_matrix <<- y;
    cached_inverse <<- NULL;
  }
  get <- function() the_matrix;
  setInverse <- function(input_inverse) cached_inverse <<- input_inverse;
  getInverse <- function() cached_inverse;
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse);
}


## This function takes the output of makeCacheMatrix as an input, then returns
## the inverse matrix. If the inverse is already calculated, it returns the
## cached inverse matrix.  If it has not been calculated, the solve function is
## used to create the inverse matrix from the original matrix.  The inverse is then cached and also
## returned at the end of the function.
  
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  I <- x$getInverse();
  if(!is.null(I)) {
    message("getting cached data");
    return(I);
  }
  data <- x$get();
  message("computing inverse matrix")
  I <- solve(data, ...);
  x$setInverse(I)
  I
}
