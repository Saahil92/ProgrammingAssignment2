## Created below are a pair of functions that can be used to cache
## and find inverse of a matrix


## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(m = matrix()) {
  inverse <- NULL
  set <- function(x) {
    m <- x;
    inverse <- NULL;
    }
  get <- function() 
  return(m);
  setinv <- function(inv) 
  inverse <- inv;
  getinv <- function() 
  return(inverse);
  return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed)
## then the cachesolve retrieves the inverse from the cache.

cacheSolve <- function(m, ...) {
  inverse <- m$getinv()
  if(!is.null(inverse)) {
    message("Obtaining cache data..")
    return(inverse)
  }
  data <- m$get()
  inverse <- solve(data, ...)
  m$setinv(inverse)
  return(inverse)  ## Return a matrix that is the inverse of 'm'
}
