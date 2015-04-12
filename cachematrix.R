## Created below are a pair of functions that can be used to cache
## and find inverse of a matrix


## First is a function used for caching the matrix

makecache <- function(m = matrix()) {
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


## The second function is used to find the inverse of the matrix
## In order to do this, we shall use matrix calculated by the above function
## There is also a message in case the inverted matrix is availabe in cache
## and, if available in cache, the inverted matrix is displayed

getmatrix <- function(m, ...) {
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
